import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;
import 'package:jcm/components/graphql/schema/schema.schema.gql.dart'
    show
        GCreateCustomerInput,
        GCreateProformaSpecBatchInput,
        GCustomerCreateInput,
        GDate,
        GDateTime,
        GDeleteIncomeInput,
        GDeleteIncomeRowInput,
        GDeleteOrderInput,
        GDeleteOrderSpecInput,
        GDeletePaymentInput,
        GDeleteProformaInput,
        GDeleteProformaSpecInput,
        GGenericScalar,
        GIncomeModelFormMutationInput,
        GIncomeRowModelFormMutationInput,
        GJSONString,
        GMotorsExType,
        GMotorsIc,
        GMotorsIm,
        GMotorsIp,
        GMotorsKw,
        GMotorsSpeed,
        GMotorsVoltage,
        GMyCustomerMutationInput,
        GMyMutationInput,
        GPaymentModelFormMutationInput,
        GPrefSpecModelFormMutationInput,
        GProformaModelFormMutationInput,
        GProformaSpecInput,
        GReqSpecModelFormMutationInput,
        GRequestModelFormMutationInput,
        GUpdateCustomerInput;
import 'package:jcm/components/graphql/user/user.data.gql.dart'
    show
        GgetUsersData,
        GgetUsersData_allUsers,
        GgetUsersData_allUsers_edges,
        GgetUsersData_allUsers_edges_node;
import 'package:jcm/components/graphql/user/user.req.gql.dart'
    show GgetUsersReq;
import 'package:jcm/components/graphql/user/user.var.gql.dart'
    show GgetUsersVars;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GCreateCustomerInput,
  GCreateProformaSpecBatchInput,
  GCustomerCreateInput,
  GDate,
  GDateTime,
  GDeleteIncomeInput,
  GDeleteIncomeRowInput,
  GDeleteOrderInput,
  GDeleteOrderSpecInput,
  GDeletePaymentInput,
  GDeleteProformaInput,
  GDeleteProformaSpecInput,
  GGenericScalar,
  GIncomeModelFormMutationInput,
  GIncomeRowModelFormMutationInput,
  GJSONString,
  GMotorsExType,
  GMotorsIc,
  GMotorsIm,
  GMotorsIp,
  GMotorsKw,
  GMotorsSpeed,
  GMotorsVoltage,
  GMyCustomerMutationInput,
  GMyMutationInput,
  GPaymentModelFormMutationInput,
  GPrefSpecModelFormMutationInput,
  GProformaModelFormMutationInput,
  GProformaSpecInput,
  GReqSpecModelFormMutationInput,
  GRequestModelFormMutationInput,
  GUpdateCustomerInput,
  GgetUsersData,
  GgetUsersData_allUsers,
  GgetUsersData_allUsers_edges,
  GgetUsersData_allUsers_edges_node,
  GgetUsersReq,
  GgetUsersVars
])
final Serializers serializers = _serializersBuilder.build();
