// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetUsersVars> _$ggetUsersVarsSerializer =
    new _$GgetUsersVarsSerializer();

class _$GgetUsersVarsSerializer implements StructuredSerializer<GgetUsersVars> {
  @override
  final Iterable<Type> types = const [GgetUsersVars, _$GgetUsersVars];
  @override
  final String wireName = 'GgetUsersVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GgetUsersVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GgetUsersVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GgetUsersVarsBuilder().build();
  }
}

class _$GgetUsersVars extends GgetUsersVars {
  factory _$GgetUsersVars([void Function(GgetUsersVarsBuilder)? updates]) =>
      (new GgetUsersVarsBuilder()..update(updates)).build();

  _$GgetUsersVars._() : super._();

  @override
  GgetUsersVars rebuild(void Function(GgetUsersVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetUsersVarsBuilder toBuilder() => new GgetUsersVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetUsersVars;
  }

  @override
  int get hashCode {
    return 180173834;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GgetUsersVars').toString();
  }
}

class GgetUsersVarsBuilder
    implements Builder<GgetUsersVars, GgetUsersVarsBuilder> {
  _$GgetUsersVars? _$v;

  GgetUsersVarsBuilder();

  @override
  void replace(GgetUsersVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetUsersVars;
  }

  @override
  void update(void Function(GgetUsersVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GgetUsersVars build() {
    final _$result = _$v ?? new _$GgetUsersVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
