// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hello_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HelloResponse extends HelloResponse {
  @override
  final String message;

  factory _$HelloResponse([void Function(HelloResponseBuilder)? updates]) =>
      (HelloResponseBuilder()..update(updates))._build();

  _$HelloResponse._({required this.message}) : super._();
  @override
  HelloResponse rebuild(void Function(HelloResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HelloResponseBuilder toBuilder() => HelloResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HelloResponse && message == other.message;
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
    return (newBuiltValueToStringHelper(r'HelloResponse')
          ..add('message', message))
        .toString();
  }
}

class HelloResponseBuilder
    implements Builder<HelloResponse, HelloResponseBuilder> {
  _$HelloResponse? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  HelloResponseBuilder() {
    HelloResponse._defaults(this);
  }

  HelloResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HelloResponse other) {
    _$v = other as _$HelloResponse;
  }

  @override
  void update(void Function(HelloResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HelloResponse build() => _build();

  _$HelloResponse _build() {
    final _$result = _$v ??
        _$HelloResponse._(
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'HelloResponse', 'message'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
