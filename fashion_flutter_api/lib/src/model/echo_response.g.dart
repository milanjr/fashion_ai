// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'echo_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EchoResponse extends EchoResponse {
  @override
  final String message;

  factory _$EchoResponse([void Function(EchoResponseBuilder)? updates]) =>
      (EchoResponseBuilder()..update(updates))._build();

  _$EchoResponse._({required this.message}) : super._();
  @override
  EchoResponse rebuild(void Function(EchoResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EchoResponseBuilder toBuilder() => EchoResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EchoResponse && message == other.message;
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
    return (newBuiltValueToStringHelper(r'EchoResponse')
          ..add('message', message))
        .toString();
  }
}

class EchoResponseBuilder
    implements Builder<EchoResponse, EchoResponseBuilder> {
  _$EchoResponse? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  EchoResponseBuilder() {
    EchoResponse._defaults(this);
  }

  EchoResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EchoResponse other) {
    _$v = other as _$EchoResponse;
  }

  @override
  void update(void Function(EchoResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EchoResponse build() => _build();

  _$EchoResponse _build() {
    final _$result = _$v ??
        _$EchoResponse._(
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'EchoResponse', 'message'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
