import 'package:flutter/material.dart';

class CommonIconButton extends StatelessWidget {
  const CommonIconButton({
    super.key,
    required this.onPressed,
    required this.iconData,
    required this.backgroundColor,
    required this.foregroundColor,
  });

  final VoidCallback? onPressed;
  final IconData iconData;
  final Color backgroundColor;
  final Color foregroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      label: Icon(
          iconData,
          color: Theme.of(context).colorScheme.onPrimary,
      ),
      style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor, // Button background color
          foregroundColor: foregroundColor, // Text color
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8), // Rounded corners
          )),
    );
    //   IconButton(
    //   onPressed: onPressed,
    //   icon: Icon(iconData),
    //   style: ButtonStyle(
    //     shape: WidgetStateProperty.all<RoundedRectangleBorder>(
    //       RoundedRectangleBorder(
    //         borderRadius:
    //             BorderRadius.circular(8), // Adjust for sharp or rounded edges
    //       ),
    //     ),
    //     backgroundColor: WidgetStateProperty.all(backgroundColor),
    //     foregroundColor: WidgetStateProperty.all(foregroundColor),
    //     shadowColor: WidgetStateProperty.all(Colors.red),
    //   ),
    // );
  }
}
