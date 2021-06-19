// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jcm/components/graphql/schema/serializers.gql.dart' as _i1;

part 'user.data.gql.g.dart';

abstract class GgetUsersData
    implements Built<GgetUsersData, GgetUsersDataBuilder> {
  GgetUsersData._();

  factory GgetUsersData([Function(GgetUsersDataBuilder b) updates]) =
      _$GgetUsersData;

  static void _initializeBuilder(GgetUsersDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetUsersData_allUsers? get allUsers;
  static Serializer<GgetUsersData> get serializer => _$ggetUsersDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GgetUsersData.serializer, this)
          as Map<String, dynamic>);
  static GgetUsersData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GgetUsersData.serializer, json);
}

abstract class GgetUsersData_allUsers
    implements Built<GgetUsersData_allUsers, GgetUsersData_allUsersBuilder> {
  GgetUsersData_allUsers._();

  factory GgetUsersData_allUsers(
          [Function(GgetUsersData_allUsersBuilder b) updates]) =
      _$GgetUsersData_allUsers;

  static void _initializeBuilder(GgetUsersData_allUsersBuilder b) =>
      b..G__typename = 'UserNodeConnection';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GgetUsersData_allUsers_edges> get edges;
  static Serializer<GgetUsersData_allUsers> get serializer =>
      _$ggetUsersDataAllUsersSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GgetUsersData_allUsers.serializer, this)
          as Map<String, dynamic>);
  static GgetUsersData_allUsers? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GgetUsersData_allUsers.serializer, json);
}

abstract class GgetUsersData_allUsers_edges
    implements
        Built<GgetUsersData_allUsers_edges,
            GgetUsersData_allUsers_edgesBuilder> {
  GgetUsersData_allUsers_edges._();

  factory GgetUsersData_allUsers_edges(
          [Function(GgetUsersData_allUsers_edgesBuilder b) updates]) =
      _$GgetUsersData_allUsers_edges;

  static void _initializeBuilder(GgetUsersData_allUsers_edgesBuilder b) =>
      b..G__typename = 'UserNodeEdge';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetUsersData_allUsers_edges_node? get node;
  static Serializer<GgetUsersData_allUsers_edges> get serializer =>
      _$ggetUsersDataAllUsersEdgesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GgetUsersData_allUsers_edges.serializer, this) as Map<String, dynamic>);
  static GgetUsersData_allUsers_edges? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GgetUsersData_allUsers_edges.serializer, json);
}

abstract class GgetUsersData_allUsers_edges_node
    implements
        Built<GgetUsersData_allUsers_edges_node,
            GgetUsersData_allUsers_edges_nodeBuilder> {
  GgetUsersData_allUsers_edges_node._();

  factory GgetUsersData_allUsers_edges_node(
          [Function(GgetUsersData_allUsers_edges_nodeBuilder b) updates]) =
      _$GgetUsersData_allUsers_edges_node;

  static void _initializeBuilder(GgetUsersData_allUsers_edges_nodeBuilder b) =>
      b..G__typename = 'UserNode';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get lastName;
  bool get salesExp;
  bool get isActive;
  String get username;
  static Serializer<GgetUsersData_allUsers_edges_node> get serializer =>
      _$ggetUsersDataAllUsersEdgesNodeSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GgetUsersData_allUsers_edges_node.serializer, this)
      as Map<String, dynamic>);
  static GgetUsersData_allUsers_edges_node? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GgetUsersData_allUsers_edges_node.serializer, json);
}
