// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jcm/components/graphql/schema/serializers.gql.dart' as _i1;

part 'user.var.gql.g.dart';

abstract class GgetUsersVars
    implements Built<GgetUsersVars, GgetUsersVarsBuilder> {
  GgetUsersVars._();

  factory GgetUsersVars([Function(GgetUsersVarsBuilder b) updates]) =
      _$GgetUsersVars;

  static Serializer<GgetUsersVars> get serializer => _$ggetUsersVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GgetUsersVars.serializer, this)
          as Map<String, dynamic>);
  static GgetUsersVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GgetUsersVars.serializer, json);
}
