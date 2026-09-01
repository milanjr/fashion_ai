import 'package:dio/dio.dart';
import 'package:fashion_ai_api/fashion_ai_api.dart';
import 'package:flutter/material.dart';

class ApiTestPage extends StatefulWidget {
  const ApiTestPage({super.key});

  @override
  State<ApiTestPage> createState() => _ApiTestPageState();
}

class _ApiTestPageState extends State<ApiTestPage> {
  late final DefaultApi _api;

  final TextEditingController _echoController =
  TextEditingController(text: 'Yellow brother !!!');

  String _helloResponse = '';
  String _echoResponse = '';
  String _errorMessage = '';

  bool _helloLoading = false;
  bool _echoLoading = false;

  @override
  void initState() {
    super.initState();

    final dio = Dio(
      BaseOptions(
        baseUrl: 'http://localhost:8000',
        connectTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 10),
      ),
    );

    // Generated OpenAPI client requires both Dio and Serializers.
    // final serializers = Serializers();

    _api = DefaultApi(dio, serializers);
  }

  Future<void> _callHello() async {
    setState(() {
      _helloLoading = true;
      _errorMessage = '';
    });

    try {
      final response = await _api.getHello();

      setState(() {
        _helloResponse = response.data?.message ?? '';
      });
    } catch (e) {
      setState(() {
        _errorMessage = 'Hello API error: $e';
      });
    } finally {
      setState(() {
        _helloLoading = false;
      });
    }
  }

  Future<void> _callEcho() async {
    setState(() {
      _echoLoading = true;
      _errorMessage = '';
    });

    try {
      final request = EchoRequest(
            (b) => b.message = _echoController.text,
      );

      final response = await _api.echo(request);

      setState(() {
        _echoResponse = response.data?.message ?? '';
      });
    } catch (e) {
      setState(() {
        _errorMessage = 'Echo API error: $e';
      });
    } finally {
      setState(() {
        _echoLoading = false;
      });
    }
  }

  @override
  void dispose() {
    _echoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fashion AI API Test'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Hello API',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            ElevatedButton(
              onPressed: _helloLoading ? null : _callHello,
              child: _helloLoading
                  ? const CircularProgressIndicator()
                  : const Text('Call Hello API'),
            ),

            const SizedBox(height: 12),

            Text(
              _helloResponse.isEmpty
                  ? 'No response yet'
                  : 'Response: $_helloResponse',
            ),

            const SizedBox(height: 40),

            const Text(
              'Echo API',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            TextField(
              controller: _echoController,
              decoration: const InputDecoration(
                labelText: 'Message',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 12),

            ElevatedButton(
              onPressed: _echoLoading ? null : _callEcho,
              child: _echoLoading
                  ? const CircularProgressIndicator()
                  : const Text('Call Echo API'),
            ),

            const SizedBox(height: 12),

            Text(
              _echoResponse.isEmpty
                  ? 'No response yet'
                  : 'Response: $_echoResponse',
            ),

            const SizedBox(height: 30),

            if (_errorMessage.isNotEmpty)
              Text(
                _errorMessage,
                style: const TextStyle(
                  color: Colors.red,
                ),
              ),
          ],
        ),
      ),
    );
  }
}