// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetUsersData> _$ggetUsersDataSerializer =
    new _$GgetUsersDataSerializer();
Serializer<GgetUsersData_allUsers> _$ggetUsersDataAllUsersSerializer =
    new _$GgetUsersData_allUsersSerializer();
Serializer<GgetUsersData_allUsers_edges>
    _$ggetUsersDataAllUsersEdgesSerializer =
    new _$GgetUsersData_allUsers_edgesSerializer();
Serializer<GgetUsersData_allUsers_edges_node>
    _$ggetUsersDataAllUsersEdgesNodeSerializer =
    new _$GgetUsersData_allUsers_edges_nodeSerializer();

class _$GgetUsersDataSerializer implements StructuredSerializer<GgetUsersData> {
  @override
  final Iterable<Type> types = const [GgetUsersData, _$GgetUsersData];
  @override
  final String wireName = 'GgetUsersData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GgetUsersData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.allUsers;
    if (value != null) {
      result
        ..add('allUsers')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GgetUsersData_allUsers)));
    }
    return result;
  }

  @override
  GgetUsersData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetUsersDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'allUsers':
          result.allUsers.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GgetUsersData_allUsers))!
              as GgetUsersData_allUsers);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetUsersData_allUsersSerializer
    implements StructuredSerializer<GgetUsersData_allUsers> {
  @override
  final Iterable<Type> types = const [
    GgetUsersData_allUsers,
    _$GgetUsersData_allUsers
  ];
  @override
  final String wireName = 'GgetUsersData_allUsers';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetUsersData_allUsers object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'edges',
      serializers.serialize(object.edges,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GgetUsersData_allUsers_edges)])),
    ];

    return result;
  }

  @override
  GgetUsersData_allUsers deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetUsersData_allUsersBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'edges':
          result.edges.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GgetUsersData_allUsers_edges)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetUsersData_allUsers_edgesSerializer
    implements StructuredSerializer<GgetUsersData_allUsers_edges> {
  @override
  final Iterable<Type> types = const [
    GgetUsersData_allUsers_edges,
    _$GgetUsersData_allUsers_edges
  ];
  @override
  final String wireName = 'GgetUsersData_allUsers_edges';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetUsersData_allUsers_edges object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.node;
    if (value != null) {
      result
        ..add('node')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GgetUsersData_allUsers_edges_node)));
    }
    return result;
  }

  @override
  GgetUsersData_allUsers_edges deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetUsersData_allUsers_edgesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'node':
          result.node.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GgetUsersData_allUsers_edges_node))!
              as GgetUsersData_allUsers_edges_node);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetUsersData_allUsers_edges_nodeSerializer
    implements StructuredSerializer<GgetUsersData_allUsers_edges_node> {
  @override
  final Iterable<Type> types = const [
    GgetUsersData_allUsers_edges_node,
    _$GgetUsersData_allUsers_edges_node
  ];
  @override
  final String wireName = 'GgetUsersData_allUsers_edges_node';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetUsersData_allUsers_edges_node object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'lastName',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
      'salesExp',
      serializers.serialize(object.salesExp,
          specifiedType: const FullType(bool)),
      'isActive',
      serializers.serialize(object.isActive,
          specifiedType: const FullType(bool)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GgetUsersData_allUsers_edges_node deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetUsersData_allUsers_edges_nodeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'salesExp':
          result.salesExp = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'isActive':
          result.isActive = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetUsersData extends GgetUsersData {
  @override
  final String G__typename;
  @override
  final GgetUsersData_allUsers? allUsers;

  factory _$GgetUsersData([void Function(GgetUsersDataBuilder)? updates]) =>
      (new GgetUsersDataBuilder()..update(updates)).build();

  _$GgetUsersData._({required this.G__typename, this.allUsers}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GgetUsersData', 'G__typename');
  }

  @override
  GgetUsersData rebuild(void Function(GgetUsersDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetUsersDataBuilder toBuilder() => new GgetUsersDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetUsersData &&
        G__typename == other.G__typename &&
        allUsers == other.allUsers;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), allUsers.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GgetUsersData')
          ..add('G__typename', G__typename)
          ..add('allUsers', allUsers))
        .toString();
  }
}

class GgetUsersDataBuilder
    implements Builder<GgetUsersData, GgetUsersDataBuilder> {
  _$GgetUsersData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GgetUsersData_allUsersBuilder? _allUsers;
  GgetUsersData_allUsersBuilder get allUsers =>
      _$this._allUsers ??= new GgetUsersData_allUsersBuilder();
  set allUsers(GgetUsersData_allUsersBuilder? allUsers) =>
      _$this._allUsers = allUsers;

  GgetUsersDataBuilder() {
    GgetUsersData._initializeBuilder(this);
  }

  GgetUsersDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _allUsers = $v.allUsers?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetUsersData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetUsersData;
  }

  @override
  void update(void Function(GgetUsersDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GgetUsersData build() {
    _$GgetUsersData _$result;
    try {
      _$result = _$v ??
          new _$GgetUsersData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GgetUsersData', 'G__typename'),
              allUsers: _allUsers?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'allUsers';
        _allUsers?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GgetUsersData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetUsersData_allUsers extends GgetUsersData_allUsers {
  @override
  final String G__typename;
  @override
  final BuiltList<GgetUsersData_allUsers_edges> edges;

  factory _$GgetUsersData_allUsers(
          [void Function(GgetUsersData_allUsersBuilder)? updates]) =>
      (new GgetUsersData_allUsersBuilder()..update(updates)).build();

  _$GgetUsersData_allUsers._({required this.G__typename, required this.edges})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GgetUsersData_allUsers', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        edges, 'GgetUsersData_allUsers', 'edges');
  }

  @override
  GgetUsersData_allUsers rebuild(
          void Function(GgetUsersData_allUsersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetUsersData_allUsersBuilder toBuilder() =>
      new GgetUsersData_allUsersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetUsersData_allUsers &&
        G__typename == other.G__typename &&
        edges == other.edges;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), edges.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GgetUsersData_allUsers')
          ..add('G__typename', G__typename)
          ..add('edges', edges))
        .toString();
  }
}

class GgetUsersData_allUsersBuilder
    implements Builder<GgetUsersData_allUsers, GgetUsersData_allUsersBuilder> {
  _$GgetUsersData_allUsers? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GgetUsersData_allUsers_edges>? _edges;
  ListBuilder<GgetUsersData_allUsers_edges> get edges =>
      _$this._edges ??= new ListBuilder<GgetUsersData_allUsers_edges>();
  set edges(ListBuilder<GgetUsersData_allUsers_edges>? edges) =>
      _$this._edges = edges;

  GgetUsersData_allUsersBuilder() {
    GgetUsersData_allUsers._initializeBuilder(this);
  }

  GgetUsersData_allUsersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _edges = $v.edges.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetUsersData_allUsers other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetUsersData_allUsers;
  }

  @override
  void update(void Function(GgetUsersData_allUsersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GgetUsersData_allUsers build() {
    _$GgetUsersData_allUsers _$result;
    try {
      _$result = _$v ??
          new _$GgetUsersData_allUsers._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GgetUsersData_allUsers', 'G__typename'),
              edges: edges.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'edges';
        edges.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GgetUsersData_allUsers', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetUsersData_allUsers_edges extends GgetUsersData_allUsers_edges {
  @override
  final String G__typename;
  @override
  final GgetUsersData_allUsers_edges_node? node;

  factory _$GgetUsersData_allUsers_edges(
          [void Function(GgetUsersData_allUsers_edgesBuilder)? updates]) =>
      (new GgetUsersData_allUsers_edgesBuilder()..update(updates)).build();

  _$GgetUsersData_allUsers_edges._({required this.G__typename, this.node})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GgetUsersData_allUsers_edges', 'G__typename');
  }

  @override
  GgetUsersData_allUsers_edges rebuild(
          void Function(GgetUsersData_allUsers_edgesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetUsersData_allUsers_edgesBuilder toBuilder() =>
      new GgetUsersData_allUsers_edgesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetUsersData_allUsers_edges &&
        G__typename == other.G__typename &&
        node == other.node;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), node.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GgetUsersData_allUsers_edges')
          ..add('G__typename', G__typename)
          ..add('node', node))
        .toString();
  }
}

class GgetUsersData_allUsers_edgesBuilder
    implements
        Builder<GgetUsersData_allUsers_edges,
            GgetUsersData_allUsers_edgesBuilder> {
  _$GgetUsersData_allUsers_edges? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GgetUsersData_allUsers_edges_nodeBuilder? _node;
  GgetUsersData_allUsers_edges_nodeBuilder get node =>
      _$this._node ??= new GgetUsersData_allUsers_edges_nodeBuilder();
  set node(GgetUsersData_allUsers_edges_nodeBuilder? node) =>
      _$this._node = node;

  GgetUsersData_allUsers_edgesBuilder() {
    GgetUsersData_allUsers_edges._initializeBuilder(this);
  }

  GgetUsersData_allUsers_edgesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _node = $v.node?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetUsersData_allUsers_edges other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetUsersData_allUsers_edges;
  }

  @override
  void update(void Function(GgetUsersData_allUsers_edgesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GgetUsersData_allUsers_edges build() {
    _$GgetUsersData_allUsers_edges _$result;
    try {
      _$result = _$v ??
          new _$GgetUsersData_allUsers_edges._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GgetUsersData_allUsers_edges', 'G__typename'),
              node: _node?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'node';
        _node?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GgetUsersData_allUsers_edges', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetUsersData_allUsers_edges_node
    extends GgetUsersData_allUsers_edges_node {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String lastName;
  @override
  final bool salesExp;
  @override
  final bool isActive;
  @override
  final String username;

  factory _$GgetUsersData_allUsers_edges_node(
          [void Function(GgetUsersData_allUsers_edges_nodeBuilder)? updates]) =>
      (new GgetUsersData_allUsers_edges_nodeBuilder()..update(updates)).build();

  _$GgetUsersData_allUsers_edges_node._(
      {required this.G__typename,
      required this.id,
      required this.lastName,
      required this.salesExp,
      required this.isActive,
      required this.username})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GgetUsersData_allUsers_edges_node', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GgetUsersData_allUsers_edges_node', 'id');
    BuiltValueNullFieldError.checkNotNull(
        lastName, 'GgetUsersData_allUsers_edges_node', 'lastName');
    BuiltValueNullFieldError.checkNotNull(
        salesExp, 'GgetUsersData_allUsers_edges_node', 'salesExp');
    BuiltValueNullFieldError.checkNotNull(
        isActive, 'GgetUsersData_allUsers_edges_node', 'isActive');
    BuiltValueNullFieldError.checkNotNull(
        username, 'GgetUsersData_allUsers_edges_node', 'username');
  }

  @override
  GgetUsersData_allUsers_edges_node rebuild(
          void Function(GgetUsersData_allUsers_edges_nodeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetUsersData_allUsers_edges_nodeBuilder toBuilder() =>
      new GgetUsersData_allUsers_edges_nodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetUsersData_allUsers_edges_node &&
        G__typename == other.G__typename &&
        id == other.id &&
        lastName == other.lastName &&
        salesExp == other.salesExp &&
        isActive == other.isActive &&
        username == other.username;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                    lastName.hashCode),
                salesExp.hashCode),
            isActive.hashCode),
        username.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GgetUsersData_allUsers_edges_node')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('lastName', lastName)
          ..add('salesExp', salesExp)
          ..add('isActive', isActive)
          ..add('username', username))
        .toString();
  }
}

class GgetUsersData_allUsers_edges_nodeBuilder
    implements
        Builder<GgetUsersData_allUsers_edges_node,
            GgetUsersData_allUsers_edges_nodeBuilder> {
  _$GgetUsersData_allUsers_edges_node? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  bool? _salesExp;
  bool? get salesExp => _$this._salesExp;
  set salesExp(bool? salesExp) => _$this._salesExp = salesExp;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  GgetUsersData_allUsers_edges_nodeBuilder() {
    GgetUsersData_allUsers_edges_node._initializeBuilder(this);
  }

  GgetUsersData_allUsers_edges_nodeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _lastName = $v.lastName;
      _salesExp = $v.salesExp;
      _isActive = $v.isActive;
      _username = $v.username;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetUsersData_allUsers_edges_node other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetUsersData_allUsers_edges_node;
  }

  @override
  void update(
      void Function(GgetUsersData_allUsers_edges_nodeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GgetUsersData_allUsers_edges_node build() {
    final _$result = _$v ??
        new _$GgetUsersData_allUsers_edges_node._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GgetUsersData_allUsers_edges_node', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GgetUsersData_allUsers_edges_node', 'id'),
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName, 'GgetUsersData_allUsers_edges_node', 'lastName'),
            salesExp: BuiltValueNullFieldError.checkNotNull(
                salesExp, 'GgetUsersData_allUsers_edges_node', 'salesExp'),
            isActive: BuiltValueNullFieldError.checkNotNull(
                isActive, 'GgetUsersData_allUsers_edges_node', 'isActive'),
            username: BuiltValueNullFieldError.checkNotNull(
                username, 'GgetUsersData_allUsers_edges_node', 'username'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
