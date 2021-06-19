// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GFetchSaleExpsVars> _$gFetchSaleExpsVarsSerializer =
    new _$GFetchSaleExpsVarsSerializer();

class _$GFetchSaleExpsVarsSerializer
    implements StructuredSerializer<GFetchSaleExpsVars> {
  @override
  final Iterable<Type> types = const [GFetchSaleExpsVars, _$GFetchSaleExpsVars];
  @override
  final String wireName = 'GFetchSaleExpsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFetchSaleExpsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.isSales;
    if (value != null) {
      result
        ..add('isSales')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isCustomer;
    if (value != null) {
      result
        ..add('isCustomer')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GFetchSaleExpsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFetchSaleExpsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'isSales':
          result.isSales = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isCustomer':
          result.isCustomer = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchSaleExpsVars extends GFetchSaleExpsVars {
  @override
  final bool? isSales;
  @override
  final bool? isCustomer;

  factory _$GFetchSaleExpsVars(
          [void Function(GFetchSaleExpsVarsBuilder)? updates]) =>
      (new GFetchSaleExpsVarsBuilder()..update(updates)).build();

  _$GFetchSaleExpsVars._({this.isSales, this.isCustomer}) : super._();

  @override
  GFetchSaleExpsVars rebuild(
          void Function(GFetchSaleExpsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchSaleExpsVarsBuilder toBuilder() =>
      new GFetchSaleExpsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFetchSaleExpsVars &&
        isSales == other.isSales &&
        isCustomer == other.isCustomer;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, isSales.hashCode), isCustomer.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GFetchSaleExpsVars')
          ..add('isSales', isSales)
          ..add('isCustomer', isCustomer))
        .toString();
  }
}

class GFetchSaleExpsVarsBuilder
    implements Builder<GFetchSaleExpsVars, GFetchSaleExpsVarsBuilder> {
  _$GFetchSaleExpsVars? _$v;

  bool? _isSales;
  bool? get isSales => _$this._isSales;
  set isSales(bool? isSales) => _$this._isSales = isSales;

  bool? _isCustomer;
  bool? get isCustomer => _$this._isCustomer;
  set isCustomer(bool? isCustomer) => _$this._isCustomer = isCustomer;

  GFetchSaleExpsVarsBuilder();

  GFetchSaleExpsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isSales = $v.isSales;
      _isCustomer = $v.isCustomer;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFetchSaleExpsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFetchSaleExpsVars;
  }

  @override
  void update(void Function(GFetchSaleExpsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFetchSaleExpsVars build() {
    final _$result = _$v ??
        new _$GFetchSaleExpsVars._(isSales: isSales, isCustomer: isCustomer);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
