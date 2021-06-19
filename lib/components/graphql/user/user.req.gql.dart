// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:jcm/components/graphql/schema/serializers.gql.dart' as _i6;
import 'package:jcm/components/graphql/user/user.ast.gql.dart' as _i5;
import 'package:jcm/components/graphql/user/user.data.gql.dart' as _i2;
import 'package:jcm/components/graphql/user/user.var.gql.dart' as _i3;

part 'user.req.gql.g.dart';

abstract class GgetUsersReq
    implements
        Built<GgetUsersReq, GgetUsersReqBuilder>,
        _i1.OperationRequest<_i2.GgetUsersData, _i3.GgetUsersVars> {
  GgetUsersReq._();

  factory GgetUsersReq([Function(GgetUsersReqBuilder b) updates]) =
      _$GgetUsersReq;

  static void _initializeBuilder(GgetUsersReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'getUsers')
    ..executeOnListen = true;
  _i3.GgetUsersVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GgetUsersData? Function(_i2.GgetUsersData?, _i2.GgetUsersData?)?
      get updateResult;
  _i2.GgetUsersData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GgetUsersData? parseData(Map<String, dynamic> json) =>
      _i2.GgetUsersData.fromJson(json);
  static Serializer<GgetUsersReq> get serializer => _$ggetUsersReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GgetUsersReq.serializer, this)
          as Map<String, dynamic>);
  static GgetUsersReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GgetUsersReq.serializer, json);
}
