# fashion_ai_api.api.DefaultApi

## Load the API package
```dart
import 'package:fashion_ai_api/api.dart';
```

All URIs are relative to *http://localhost:8000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**echoMessage**](DefaultApi.md#echomessage) | **POST** /api/v1/echo | Test POST endpoint
[**getHello**](DefaultApi.md#gethello) | **GET** /api/v1/hello | Test GET endpoint


# **echoMessage**
> EchoResponse echoMessage(echoRequest)

Test POST endpoint

### Example
```dart
import 'package:fashion_ai_api/api.dart';

final api = FashionAiApi().getDefaultApi();
final EchoRequest echoRequest = ; // EchoRequest | 

try {
    final response = api.echoMessage(echoRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->echoMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **echoRequest** | [**EchoRequest**](EchoRequest.md)|  | 

### Return type

[**EchoResponse**](EchoResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHello**
> HelloResponse getHello()

Test GET endpoint

### Example
```dart
import 'package:fashion_ai_api/api.dart';

final api = FashionAiApi().getDefaultApi();

try {
    final response = api.getHello();
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getHello: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**HelloResponse**](HelloResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

