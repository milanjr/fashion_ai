//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'echo_request.g.dart';

/// EchoRequest
///
/// Properties:
/// * [message] 
@BuiltValue()
abstract class EchoRequest implements Built<EchoRequest, EchoRequestBuilder> {
  @BuiltValueField(wireName: r'message')
  String get message;

  EchoRequest._();

  factory EchoRequest([void updates(EchoRequestBuilder b)]) = _$EchoRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EchoRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EchoRequest> get serializer => _$EchoRequestSerializer();
}

class _$EchoRequestSerializer implements PrimitiveSerializer<EchoRequest> {
  @override
  final Iterable<Type> types = const [EchoRequest, _$EchoRequest];

  @override
  final String wireName = r'EchoRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EchoRequest object, {
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
    EchoRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EchoRequestBuilder result,
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
  EchoRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EchoRequestBuilder();
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


