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

abstract class GFetchSaleExpsReq
    implements
        Built<GFetchSaleExpsReq, GFetchSaleExpsReqBuilder>,
        _i1.OperationRequest<_i2.GFetchSaleExpsData, _i3.GFetchSaleExpsVars> {
  GFetchSaleExpsReq._();

  factory GFetchSaleExpsReq([Function(GFetchSaleExpsReqBuilder b) updates]) =
      _$GFetchSaleExpsReq;

  static void _initializeBuilder(GFetchSaleExpsReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'FetchSaleExps')
    ..executeOnListen = true;
  _i3.GFetchSaleExpsVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GFetchSaleExpsData? Function(
      _i2.GFetchSaleExpsData?, _i2.GFetchSaleExpsData?)? get updateResult;
  _i2.GFetchSaleExpsData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GFetchSaleExpsData? parseData(Map<String, dynamic> json) =>
      _i2.GFetchSaleExpsData.fromJson(json);
  static Serializer<GFetchSaleExpsReq> get serializer =>
      _$gFetchSaleExpsReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GFetchSaleExpsReq.serializer, this)
          as Map<String, dynamic>);
  static GFetchSaleExpsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GFetchSaleExpsReq.serializer, json);
}
