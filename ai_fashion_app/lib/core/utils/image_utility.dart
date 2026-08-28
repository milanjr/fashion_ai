import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/services.dart';
import 'package:image/image.dart' as img;
import 'package:path_provider/path_provider.dart';
import 'package:camera/camera.dart';

class ImageUtility {
  final bool usePng;
  ImageUtility({required this.usePng});

  Future<File> convertCameraImageToFile(CameraImage image) async {
    // Convert YUV420 to RGB image using image package
    img.Image convertedImage = _convertYUV420toImage(image);

    // Encode to JPEG
    Uint8List imageData;
    String extension;

    if (usePng) {
      imageData = Uint8List.fromList(img.encodePng(convertedImage));
      extension = ".png";
    } else {
      imageData = Uint8List.fromList(img.encodeJpg(convertedImage));
      extension = ".jpg";
    }

    // Save to temporary file
    final tempDir = await getTemporaryDirectory();
    final filePath = '${tempDir.path}/frame_${DateTime
        .now()
        .millisecondsSinceEpoch}$extension';
    final file = File(filePath);
    await file.writeAsBytes(imageData);

    return file;
  }

  img.Image _convertYUV420toImage(CameraImage image) {
    final width = image.width;
    final height = image.height;
    final img.Image imgBuffer = img.Image(width: width, height: height);

    final planeY = image.planes[0];
    final planeU = image.planes[1];
    final planeV = image.planes[2];

    for (int y = 0; y < height; y++) {
      for (int x = 0; x < width; x++) {
        final uvIndex = (y >> 1) * planeU.bytesPerRow + (x >> 1);

        final yp = planeY.bytes[y * planeY.bytesPerRow + x];
        final up = planeU.bytes[uvIndex];
        final vp = planeV.bytes[uvIndex];

        final r = (yp + 1.370705 * (vp - 128)).clamp(0, 255).toInt();
        final g = (yp - 0.337633 * (up - 128) - 0.698001 * (vp - 128)).clamp(
            0, 255).toInt();
        final b = (yp + 1.732446 * (up - 128)).clamp(0, 255).toInt();

        imgBuffer.setPixel(x, y, img.ColorRgb8(r, g, b));
      }
    }

    return imgBuffer;
  }
}