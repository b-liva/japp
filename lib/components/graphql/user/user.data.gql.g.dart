// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GFetchSaleExpsData> _$gFetchSaleExpsDataSerializer =
    new _$GFetchSaleExpsDataSerializer();
Serializer<GFetchSaleExpsData_allUsers> _$gFetchSaleExpsDataAllUsersSerializer =
    new _$GFetchSaleExpsData_allUsersSerializer();
Serializer<GFetchSaleExpsData_allUsers_edges>
    _$gFetchSaleExpsDataAllUsersEdgesSerializer =
    new _$GFetchSaleExpsData_allUsers_edgesSerializer();
Serializer<GFetchSaleExpsData_allUsers_edges_node>
    _$gFetchSaleExpsDataAllUsersEdgesNodeSerializer =
    new _$GFetchSaleExpsData_allUsers_edges_nodeSerializer();

class _$GFetchSaleExpsDataSerializer
    implements StructuredSerializer<GFetchSaleExpsData> {
  @override
  final Iterable<Type> types = const [GFetchSaleExpsData, _$GFetchSaleExpsData];
  @override
  final String wireName = 'GFetchSaleExpsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFetchSaleExpsData object,
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
            specifiedType: const FullType(GFetchSaleExpsData_allUsers)));
    }
    return result;
  }

  @override
  GFetchSaleExpsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFetchSaleExpsDataBuilder();

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
                  specifiedType: const FullType(GFetchSaleExpsData_allUsers))!
              as GFetchSaleExpsData_allUsers);
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchSaleExpsData_allUsersSerializer
    implements StructuredSerializer<GFetchSaleExpsData_allUsers> {
  @override
  final Iterable<Type> types = const [
    GFetchSaleExpsData_allUsers,
    _$GFetchSaleExpsData_allUsers
  ];
  @override
  final String wireName = 'GFetchSaleExpsData_allUsers';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFetchSaleExpsData_allUsers object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'edges',
      serializers.serialize(object.edges,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GFetchSaleExpsData_allUsers_edges)])),
    ];

    return result;
  }

  @override
  GFetchSaleExpsData_allUsers deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFetchSaleExpsData_allUsersBuilder();

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
                const FullType(GFetchSaleExpsData_allUsers_edges)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchSaleExpsData_allUsers_edgesSerializer
    implements StructuredSerializer<GFetchSaleExpsData_allUsers_edges> {
  @override
  final Iterable<Type> types = const [
    GFetchSaleExpsData_allUsers_edges,
    _$GFetchSaleExpsData_allUsers_edges
  ];
  @override
  final String wireName = 'GFetchSaleExpsData_allUsers_edges';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFetchSaleExpsData_allUsers_edges object,
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
            specifiedType:
                const FullType(GFetchSaleExpsData_allUsers_edges_node)));
    }
    return result;
  }

  @override
  GFetchSaleExpsData_allUsers_edges deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFetchSaleExpsData_allUsers_edgesBuilder();

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
                      const FullType(GFetchSaleExpsData_allUsers_edges_node))!
              as GFetchSaleExpsData_allUsers_edges_node);
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchSaleExpsData_allUsers_edges_nodeSerializer
    implements StructuredSerializer<GFetchSaleExpsData_allUsers_edges_node> {
  @override
  final Iterable<Type> types = const [
    GFetchSaleExpsData_allUsers_edges_node,
    _$GFetchSaleExpsData_allUsers_edges_node
  ];
  @override
  final String wireName = 'GFetchSaleExpsData_allUsers_edges_node';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFetchSaleExpsData_allUsers_edges_node object,
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
  GFetchSaleExpsData_allUsers_edges_node deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFetchSaleExpsData_allUsers_edges_nodeBuilder();

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

class _$GFetchSaleExpsData extends GFetchSaleExpsData {
  @override
  final String G__typename;
  @override
  final GFetchSaleExpsData_allUsers? allUsers;

  factory _$GFetchSaleExpsData(
          [void Function(GFetchSaleExpsDataBuilder)? updates]) =>
      (new GFetchSaleExpsDataBuilder()..update(updates)).build();

  _$GFetchSaleExpsData._({required this.G__typename, this.allUsers})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GFetchSaleExpsData', 'G__typename');
  }

  @override
  GFetchSaleExpsData rebuild(
          void Function(GFetchSaleExpsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchSaleExpsDataBuilder toBuilder() =>
      new GFetchSaleExpsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFetchSaleExpsData &&
        G__typename == other.G__typename &&
        allUsers == other.allUsers;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), allUsers.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GFetchSaleExpsData')
          ..add('G__typename', G__typename)
          ..add('allUsers', allUsers))
        .toString();
  }
}

class GFetchSaleExpsDataBuilder
    implements Builder<GFetchSaleExpsData, GFetchSaleExpsDataBuilder> {
  _$GFetchSaleExpsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GFetchSaleExpsData_allUsersBuilder? _allUsers;
  GFetchSaleExpsData_allUsersBuilder get allUsers =>
      _$this._allUsers ??= new GFetchSaleExpsData_allUsersBuilder();
  set allUsers(GFetchSaleExpsData_allUsersBuilder? allUsers) =>
      _$this._allUsers = allUsers;

  GFetchSaleExpsDataBuilder() {
    GFetchSaleExpsData._initializeBuilder(this);
  }

  GFetchSaleExpsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _allUsers = $v.allUsers?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFetchSaleExpsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFetchSaleExpsData;
  }

  @override
  void update(void Function(GFetchSaleExpsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFetchSaleExpsData build() {
    _$GFetchSaleExpsData _$result;
    try {
      _$result = _$v ??
          new _$GFetchSaleExpsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GFetchSaleExpsData', 'G__typename'),
              allUsers: _allUsers?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'allUsers';
        _allUsers?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GFetchSaleExpsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFetchSaleExpsData_allUsers extends GFetchSaleExpsData_allUsers {
  @override
  final String G__typename;
  @override
  final BuiltList<GFetchSaleExpsData_allUsers_edges> edges;

  factory _$GFetchSaleExpsData_allUsers(
          [void Function(GFetchSaleExpsData_allUsersBuilder)? updates]) =>
      (new GFetchSaleExpsData_allUsersBuilder()..update(updates)).build();

  _$GFetchSaleExpsData_allUsers._(
      {required this.G__typename, required this.edges})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GFetchSaleExpsData_allUsers', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        edges, 'GFetchSaleExpsData_allUsers', 'edges');
  }

  @override
  GFetchSaleExpsData_allUsers rebuild(
          void Function(GFetchSaleExpsData_allUsersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchSaleExpsData_allUsersBuilder toBuilder() =>
      new GFetchSaleExpsData_allUsersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFetchSaleExpsData_allUsers &&
        G__typename == other.G__typename &&
        edges == other.edges;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), edges.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GFetchSaleExpsData_allUsers')
          ..add('G__typename', G__typename)
          ..add('edges', edges))
        .toString();
  }
}

class GFetchSaleExpsData_allUsersBuilder
    implements
        Builder<GFetchSaleExpsData_allUsers,
            GFetchSaleExpsData_allUsersBuilder> {
  _$GFetchSaleExpsData_allUsers? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GFetchSaleExpsData_allUsers_edges>? _edges;
  ListBuilder<GFetchSaleExpsData_allUsers_edges> get edges =>
      _$this._edges ??= new ListBuilder<GFetchSaleExpsData_allUsers_edges>();
  set edges(ListBuilder<GFetchSaleExpsData_allUsers_edges>? edges) =>
      _$this._edges = edges;

  GFetchSaleExpsData_allUsersBuilder() {
    GFetchSaleExpsData_allUsers._initializeBuilder(this);
  }

  GFetchSaleExpsData_allUsersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _edges = $v.edges.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFetchSaleExpsData_allUsers other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFetchSaleExpsData_allUsers;
  }

  @override
  void update(void Function(GFetchSaleExpsData_allUsersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFetchSaleExpsData_allUsers build() {
    _$GFetchSaleExpsData_allUsers _$result;
    try {
      _$result = _$v ??
          new _$GFetchSaleExpsData_allUsers._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GFetchSaleExpsData_allUsers', 'G__typename'),
              edges: edges.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'edges';
        edges.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GFetchSaleExpsData_allUsers', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFetchSaleExpsData_allUsers_edges
    extends GFetchSaleExpsData_allUsers_edges {
  @override
  final String G__typename;
  @override
  final GFetchSaleExpsData_allUsers_edges_node? node;

  factory _$GFetchSaleExpsData_allUsers_edges(
          [void Function(GFetchSaleExpsData_allUsers_edgesBuilder)? updates]) =>
      (new GFetchSaleExpsData_allUsers_edgesBuilder()..update(updates)).build();

  _$GFetchSaleExpsData_allUsers_edges._({required this.G__typename, this.node})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GFetchSaleExpsData_allUsers_edges', 'G__typename');
  }

  @override
  GFetchSaleExpsData_allUsers_edges rebuild(
          void Function(GFetchSaleExpsData_allUsers_edgesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchSaleExpsData_allUsers_edgesBuilder toBuilder() =>
      new GFetchSaleExpsData_allUsers_edgesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFetchSaleExpsData_allUsers_edges &&
        G__typename == other.G__typename &&
        node == other.node;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), node.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GFetchSaleExpsData_allUsers_edges')
          ..add('G__typename', G__typename)
          ..add('node', node))
        .toString();
  }
}

class GFetchSaleExpsData_allUsers_edgesBuilder
    implements
        Builder<GFetchSaleExpsData_allUsers_edges,
            GFetchSaleExpsData_allUsers_edgesBuilder> {
  _$GFetchSaleExpsData_allUsers_edges? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GFetchSaleExpsData_allUsers_edges_nodeBuilder? _node;
  GFetchSaleExpsData_allUsers_edges_nodeBuilder get node =>
      _$this._node ??= new GFetchSaleExpsData_allUsers_edges_nodeBuilder();
  set node(GFetchSaleExpsData_allUsers_edges_nodeBuilder? node) =>
      _$this._node = node;

  GFetchSaleExpsData_allUsers_edgesBuilder() {
    GFetchSaleExpsData_allUsers_edges._initializeBuilder(this);
  }

  GFetchSaleExpsData_allUsers_edgesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _node = $v.node?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFetchSaleExpsData_allUsers_edges other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFetchSaleExpsData_allUsers_edges;
  }

  @override
  void update(
      void Function(GFetchSaleExpsData_allUsers_edgesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFetchSaleExpsData_allUsers_edges build() {
    _$GFetchSaleExpsData_allUsers_edges _$result;
    try {
      _$result = _$v ??
          new _$GFetchSaleExpsData_allUsers_edges._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GFetchSaleExpsData_allUsers_edges', 'G__typename'),
              node: _node?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'node';
        _node?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GFetchSaleExpsData_allUsers_edges', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFetchSaleExpsData_allUsers_edges_node
    extends GFetchSaleExpsData_allUsers_edges_node {
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

  factory _$GFetchSaleExpsData_allUsers_edges_node(
          [void Function(GFetchSaleExpsData_allUsers_edges_nodeBuilder)?
              updates]) =>
      (new GFetchSaleExpsData_allUsers_edges_nodeBuilder()..update(updates))
          .build();

  _$GFetchSaleExpsData_allUsers_edges_node._(
      {required this.G__typename,
      required this.id,
      required this.lastName,
      required this.salesExp,
      required this.isActive,
      required this.username})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GFetchSaleExpsData_allUsers_edges_node', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GFetchSaleExpsData_allUsers_edges_node', 'id');
    BuiltValueNullFieldError.checkNotNull(
        lastName, 'GFetchSaleExpsData_allUsers_edges_node', 'lastName');
    BuiltValueNullFieldError.checkNotNull(
        salesExp, 'GFetchSaleExpsData_allUsers_edges_node', 'salesExp');
    BuiltValueNullFieldError.checkNotNull(
        isActive, 'GFetchSaleExpsData_allUsers_edges_node', 'isActive');
    BuiltValueNullFieldError.checkNotNull(
        username, 'GFetchSaleExpsData_allUsers_edges_node', 'username');
  }

  @override
  GFetchSaleExpsData_allUsers_edges_node rebuild(
          void Function(GFetchSaleExpsData_allUsers_edges_nodeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchSaleExpsData_allUsers_edges_nodeBuilder toBuilder() =>
      new GFetchSaleExpsData_allUsers_edges_nodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFetchSaleExpsData_allUsers_edges_node &&
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
    return (newBuiltValueToStringHelper(
            'GFetchSaleExpsData_allUsers_edges_node')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('lastName', lastName)
          ..add('salesExp', salesExp)
          ..add('isActive', isActive)
          ..add('username', username))
        .toString();
  }
}

class GFetchSaleExpsData_allUsers_edges_nodeBuilder
    implements
        Builder<GFetchSaleExpsData_allUsers_edges_node,
            GFetchSaleExpsData_allUsers_edges_nodeBuilder> {
  _$GFetchSaleExpsData_allUsers_edges_node? _$v;

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

  GFetchSaleExpsData_allUsers_edges_nodeBuilder() {
    GFetchSaleExpsData_allUsers_edges_node._initializeBuilder(this);
  }

  GFetchSaleExpsData_allUsers_edges_nodeBuilder get _$this {
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
  void replace(GFetchSaleExpsData_allUsers_edges_node other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFetchSaleExpsData_allUsers_edges_node;
  }

  @override
  void update(
      void Function(GFetchSaleExpsData_allUsers_edges_nodeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFetchSaleExpsData_allUsers_edges_node build() {
    final _$result = _$v ??
        new _$GFetchSaleExpsData_allUsers_edges_node._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GFetchSaleExpsData_allUsers_edges_node', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GFetchSaleExpsData_allUsers_edges_node', 'id'),
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName, 'GFetchSaleExpsData_allUsers_edges_node', 'lastName'),
            salesExp: BuiltValueNullFieldError.checkNotNull(
                salesExp, 'GFetchSaleExpsData_allUsers_edges_node', 'salesExp'),
            isActive: BuiltValueNullFieldError.checkNotNull(
                isActive, 'GFetchSaleExpsData_allUsers_edges_node', 'isActive'),
            username: BuiltValueNullFieldError.checkNotNull(username,
                'GFetchSaleExpsData_allUsers_edges_node', 'username'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
