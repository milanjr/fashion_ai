import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for DefaultApi
void main() {
  final instance = Openapi().getDefaultApi();

  group(DefaultApi, () {
    // Test POST endpoint
    //
    //Future<EchoResponse> echoMessage(EchoRequest echoRequest) async
    test('test echoMessage', () async {
      // TODO
    });

    // Test GET endpoint
    //
    //Future<HelloResponse> getHello() async
    test('test getHello', () async {
      // TODO
    });

  });
}
