// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'echo_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EchoRequest extends EchoRequest {
  @override
  final String message;

  factory _$EchoRequest([void Function(EchoRequestBuilder)? updates]) =>
      (EchoRequestBuilder()..update(updates))._build();

  _$EchoRequest._({required this.message}) : super._();
  @override
  EchoRequest rebuild(void Function(EchoRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EchoRequestBuilder toBuilder() => EchoRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EchoRequest && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EchoRequest')
          ..add('message', message))
        .toString();
  }
}

class EchoRequestBuilder implements Builder<EchoRequest, EchoRequestBuilder> {
  _$EchoRequest? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  EchoRequestBuilder() {
    EchoRequest._defaults(this);
  }

  EchoRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EchoRequest other) {
    _$v = other as _$EchoRequest;
  }

  @override
  void update(void Function(EchoRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EchoRequest build() => _build();

  _$EchoRequest _build() {
    final _$result = _$v ??
        _$EchoRequest._(
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'EchoRequest', 'message'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
