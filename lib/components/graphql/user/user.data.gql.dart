// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jcm/components/graphql/schema/serializers.gql.dart' as _i1;

part 'user.data.gql.g.dart';

abstract class GFetchSaleExpsData
    implements Built<GFetchSaleExpsData, GFetchSaleExpsDataBuilder> {
  GFetchSaleExpsData._();

  factory GFetchSaleExpsData([Function(GFetchSaleExpsDataBuilder b) updates]) =
      _$GFetchSaleExpsData;

  static void _initializeBuilder(GFetchSaleExpsDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GFetchSaleExpsData_allUsers? get allUsers;
  static Serializer<GFetchSaleExpsData> get serializer =>
      _$gFetchSaleExpsDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GFetchSaleExpsData.serializer, this)
          as Map<String, dynamic>);
  static GFetchSaleExpsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GFetchSaleExpsData.serializer, json);
}

abstract class GFetchSaleExpsData_allUsers
    implements
        Built<GFetchSaleExpsData_allUsers, GFetchSaleExpsData_allUsersBuilder> {
  GFetchSaleExpsData_allUsers._();

  factory GFetchSaleExpsData_allUsers(
          [Function(GFetchSaleExpsData_allUsersBuilder b) updates]) =
      _$GFetchSaleExpsData_allUsers;

  static void _initializeBuilder(GFetchSaleExpsData_allUsersBuilder b) =>
      b..G__typename = 'UserNodeConnection';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GFetchSaleExpsData_allUsers_edges> get edges;
  static Serializer<GFetchSaleExpsData_allUsers> get serializer =>
      _$gFetchSaleExpsDataAllUsersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GFetchSaleExpsData_allUsers.serializer, this) as Map<String, dynamic>);
  static GFetchSaleExpsData_allUsers? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GFetchSaleExpsData_allUsers.serializer, json);
}

abstract class GFetchSaleExpsData_allUsers_edges
    implements
        Built<GFetchSaleExpsData_allUsers_edges,
            GFetchSaleExpsData_allUsers_edgesBuilder> {
  GFetchSaleExpsData_allUsers_edges._();

  factory GFetchSaleExpsData_allUsers_edges(
          [Function(GFetchSaleExpsData_allUsers_edgesBuilder b) updates]) =
      _$GFetchSaleExpsData_allUsers_edges;

  static void _initializeBuilder(GFetchSaleExpsData_allUsers_edgesBuilder b) =>
      b..G__typename = 'UserNodeEdge';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GFetchSaleExpsData_allUsers_edges_node? get node;
  static Serializer<GFetchSaleExpsData_allUsers_edges> get serializer =>
      _$gFetchSaleExpsDataAllUsersEdgesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GFetchSaleExpsData_allUsers_edges.serializer, this)
      as Map<String, dynamic>);
  static GFetchSaleExpsData_allUsers_edges? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GFetchSaleExpsData_allUsers_edges.serializer, json);
}

abstract class GFetchSaleExpsData_allUsers_edges_node
    implements
        Built<GFetchSaleExpsData_allUsers_edges_node,
            GFetchSaleExpsData_allUsers_edges_nodeBuilder> {
  GFetchSaleExpsData_allUsers_edges_node._();

  factory GFetchSaleExpsData_allUsers_edges_node(
          [Function(GFetchSaleExpsData_allUsers_edges_nodeBuilder b) updates]) =
      _$GFetchSaleExpsData_allUsers_edges_node;

  static void _initializeBuilder(
          GFetchSaleExpsData_allUsers_edges_nodeBuilder b) =>
      b..G__typename = 'UserNode';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get lastName;
  bool get salesExp;
  bool get isActive;
  String get username;
  static Serializer<GFetchSaleExpsData_allUsers_edges_node> get serializer =>
      _$gFetchSaleExpsDataAllUsersEdgesNodeSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GFetchSaleExpsData_allUsers_edges_node.serializer, this)
      as Map<String, dynamic>);
  static GFetchSaleExpsData_allUsers_edges_node? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GFetchSaleExpsData_allUsers_edges_node.serializer, json);
}
