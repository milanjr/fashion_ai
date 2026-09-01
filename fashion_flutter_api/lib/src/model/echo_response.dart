//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'echo_response.g.dart';

/// EchoResponse
///
/// Properties:
/// * [message] 
@BuiltValue()
abstract class EchoResponse implements Built<EchoResponse, EchoResponseBuilder> {
  @BuiltValueField(wireName: r'message')
  String get message;

  EchoResponse._();

  factory EchoResponse([void updates(EchoResponseBuilder b)]) = _$EchoResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EchoResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EchoResponse> get serializer => _$EchoResponseSerializer();
}

class _$EchoResponseSerializer implements PrimitiveSerializer<EchoResponse> {
  @override
  final Iterable<Type> types = const [EchoResponse, _$EchoResponse];

  @override
  final String wireName = r'EchoResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EchoResponse object, {
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
    EchoResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EchoResponseBuilder result,
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
  EchoResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EchoResponseBuilder();
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


