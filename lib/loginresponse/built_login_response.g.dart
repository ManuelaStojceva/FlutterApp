// GENERATED CODE - DO NOT MODIFY BY HAND

part of built_login_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BuiltLoginResponse extends BuiltLoginResponse {
  @override
  final String auth_token;
  @override
  final IntegerDivisionByZeroException error_code;
  @override
  final String message;
  @override
  final bool status;
  @override
  final BuiltList<String> bad_attributes;

  factory _$BuiltLoginResponse(
          [void Function(BuiltLoginResponseBuilder) updates]) =>
      (new BuiltLoginResponseBuilder()..update(updates)).build();

  _$BuiltLoginResponse._(
      {this.auth_token,
      this.error_code,
      this.message,
      this.status,
      this.bad_attributes})
      : super._() {
    if (auth_token == null) {
      throw new BuiltValueNullFieldError('BuiltLoginResponse', 'auth_token');
    }
    if (error_code == null) {
      throw new BuiltValueNullFieldError('BuiltLoginResponse', 'error_code');
    }
    if (message == null) {
      throw new BuiltValueNullFieldError('BuiltLoginResponse', 'message');
    }
    if (status == null) {
      throw new BuiltValueNullFieldError('BuiltLoginResponse', 'status');
    }
    if (bad_attributes == null) {
      throw new BuiltValueNullFieldError(
          'BuiltLoginResponse', 'bad_attributes');
    }
  }

  @override
  BuiltLoginResponse rebuild(
          void Function(BuiltLoginResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltLoginResponseBuilder toBuilder() =>
      new BuiltLoginResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltLoginResponse &&
        auth_token == other.auth_token &&
        error_code == other.error_code &&
        message == other.message &&
        status == other.status &&
        bad_attributes == other.bad_attributes;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, auth_token.hashCode), error_code.hashCode),
                message.hashCode),
            status.hashCode),
        bad_attributes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltLoginResponse')
          ..add('auth_token', auth_token)
          ..add('error_code', error_code)
          ..add('message', message)
          ..add('status', status)
          ..add('bad_attributes', bad_attributes))
        .toString();
  }
}

class BuiltLoginResponseBuilder
    implements Builder<BuiltLoginResponse, BuiltLoginResponseBuilder> {
  _$BuiltLoginResponse _$v;

  String _auth_token;
  String get auth_token => _$this._auth_token;
  set auth_token(String auth_token) => _$this._auth_token = auth_token;

  IntegerDivisionByZeroException _error_code;
  IntegerDivisionByZeroException get error_code => _$this._error_code;
  set error_code(IntegerDivisionByZeroException error_code) =>
      _$this._error_code = error_code;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  bool _status;
  bool get status => _$this._status;
  set status(bool status) => _$this._status = status;

  ListBuilder<String> _bad_attributes;
  ListBuilder<String> get bad_attributes =>
      _$this._bad_attributes ??= new ListBuilder<String>();
  set bad_attributes(ListBuilder<String> bad_attributes) =>
      _$this._bad_attributes = bad_attributes;

  BuiltLoginResponseBuilder();

  BuiltLoginResponseBuilder get _$this {
    if (_$v != null) {
      _auth_token = _$v.auth_token;
      _error_code = _$v.error_code;
      _message = _$v.message;
      _status = _$v.status;
      _bad_attributes = _$v.bad_attributes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltLoginResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltLoginResponse;
  }

  @override
  void update(void Function(BuiltLoginResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltLoginResponse build() {
    _$BuiltLoginResponse _$result;
    try {
      _$result = _$v ??
          new _$BuiltLoginResponse._(
              auth_token: auth_token,
              error_code: error_code,
              message: message,
              status: status,
              bad_attributes: bad_attributes.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'bad_attributes';
        bad_attributes.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuiltLoginResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
