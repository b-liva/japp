// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jcm/components/graphql/schema/serializers.gql.dart' as _i1;

part 'user.var.gql.g.dart';

abstract class GFetchSaleExpsVars
    implements Built<GFetchSaleExpsVars, GFetchSaleExpsVarsBuilder> {
  GFetchSaleExpsVars._();

  factory GFetchSaleExpsVars([Function(GFetchSaleExpsVarsBuilder b) updates]) =
      _$GFetchSaleExpsVars;

  bool? get isSales;
  bool? get isCustomer;
  static Serializer<GFetchSaleExpsVars> get serializer =>
      _$gFetchSaleExpsVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GFetchSaleExpsVars.serializer, this)
          as Map<String, dynamic>);
  static GFetchSaleExpsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GFetchSaleExpsVars.serializer, json);
}
