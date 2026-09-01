//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hello_response.g.dart';

/// HelloResponse
///
/// Properties:
/// * [message] 
@BuiltValue()
abstract class HelloResponse implements Built<HelloResponse, HelloResponseBuilder> {
  @BuiltValueField(wireName: r'message')
  String get message;

  HelloResponse._();

  factory HelloResponse([void updates(HelloResponseBuilder b)]) = _$HelloResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HelloResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HelloResponse> get serializer => _$HelloResponseSerializer();
}

class _$HelloResponseSerializer implements PrimitiveSerializer<HelloResponse> {
  @override
  final Iterable<Type> types = const [HelloResponse, _$HelloResponse];

  @override
  final String wireName = r'HelloResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HelloResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    HelloResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HelloResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HelloResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HelloResponseBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}


