// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gql_code_builder/src/serializers/default_scalar_serializer.dart'
    as _i2;
import 'package:jcm/components/graphql/schema/serializers.gql.dart' as _i1;

part 'schema.schema.gql.g.dart';

abstract class GCreateCustomerInput
    implements Built<GCreateCustomerInput, GCreateCustomerInputBuilder> {
  GCreateCustomerInput._();

  factory GCreateCustomerInput(
          [Function(GCreateCustomerInputBuilder b) updates]) =
      _$GCreateCustomerInput;

  String get owner;
  int? get code;
  int? get codeTemp;
  String get name;
  String get type;
  GDateTime get pubDate;
  String get date2;
  String? get phone;
  String? get whatsapp;
  String? get fax;
  String? get email;
  String? get website;
  String? get postalCode;
  String? get addr;
  bool? get agent;
  String? get user;
  bool? get imported;
  String? get id;
  String? get clientMutationId;
  static Serializer<GCreateCustomerInput> get serializer =>
      _$gCreateCustomerInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCreateCustomerInput.serializer, this)
          as Map<String, dynamic>);
  static GCreateCustomerInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GCreateCustomerInput.serializer, json);
}

abstract class GCreateProformaSpecBatchInput
    implements
        Built<GCreateProformaSpecBatchInput,
            GCreateProformaSpecBatchInputBuilder> {
  GCreateProformaSpecBatchInput._();

  factory GCreateProformaSpecBatchInput(
          [Function(GCreateProformaSpecBatchInputBuilder b) updates]) =
      _$GCreateProformaSpecBatchInput;

  String? get proformaId;
  BuiltList<GProformaSpecInput>? get specsList;
  String? get clientMutationId;
  static Serializer<GCreateProformaSpecBatchInput> get serializer =>
      _$gCreateProformaSpecBatchInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GCreateProformaSpecBatchInput.serializer, this) as Map<String, dynamic>);
  static GCreateProformaSpecBatchInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GCreateProformaSpecBatchInput.serializer, json);
}

abstract class GCustomerCreateInput
    implements Built<GCustomerCreateInput, GCustomerCreateInputBuilder> {
  GCustomerCreateInput._();

  factory GCustomerCreateInput(
          [Function(GCustomerCreateInputBuilder b) updates]) =
      _$GCustomerCreateInput;

  String? get name;
  String? get owner;
  String? get type;
  String? get date2;
  GDateTime? get pubDate;
  static Serializer<GCustomerCreateInput> get serializer =>
      _$gCustomerCreateInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCustomerCreateInput.serializer, this)
          as Map<String, dynamic>);
  static GCustomerCreateInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GCustomerCreateInput.serializer, json);
}

abstract class GDate implements Built<GDate, GDateBuilder> {
  GDate._();

  factory GDate([String? value]) =>
      _$GDate((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GDate> get serializer => _i2.DefaultScalarSerializer<GDate>(
      (Object serialized) => GDate((serialized as String?)));
}

abstract class GDateTime implements Built<GDateTime, GDateTimeBuilder> {
  GDateTime._();

  factory GDateTime([String? value]) =>
      _$GDateTime((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GDateTime> get serializer =>
      _i2.DefaultScalarSerializer<GDateTime>(
          (Object serialized) => GDateTime((serialized as String?)));
}

abstract class GDeleteIncomeInput
    implements Built<GDeleteIncomeInput, GDeleteIncomeInputBuilder> {
  GDeleteIncomeInput._();

  factory GDeleteIncomeInput([Function(GDeleteIncomeInputBuilder b) updates]) =
      _$GDeleteIncomeInput;

  String? get id;
  String? get clientMutationId;
  static Serializer<GDeleteIncomeInput> get serializer =>
      _$gDeleteIncomeInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GDeleteIncomeInput.serializer, this)
          as Map<String, dynamic>);
  static GDeleteIncomeInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GDeleteIncomeInput.serializer, json);
}

abstract class GDeleteIncomeRowInput
    implements Built<GDeleteIncomeRowInput, GDeleteIncomeRowInputBuilder> {
  GDeleteIncomeRowInput._();

  factory GDeleteIncomeRowInput(
          [Function(GDeleteIncomeRowInputBuilder b) updates]) =
      _$GDeleteIncomeRowInput;

  String? get id;
  String? get clientMutationId;
  static Serializer<GDeleteIncomeRowInput> get serializer =>
      _$gDeleteIncomeRowInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GDeleteIncomeRowInput.serializer, this)
          as Map<String, dynamic>);
  static GDeleteIncomeRowInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GDeleteIncomeRowInput.serializer, json);
}

abstract class GDeleteOrderInput
    implements Built<GDeleteOrderInput, GDeleteOrderInputBuilder> {
  GDeleteOrderInput._();

  factory GDeleteOrderInput([Function(GDeleteOrderInputBuilder b) updates]) =
      _$GDeleteOrderInput;

  String? get id;
  String? get clientMutationId;
  static Serializer<GDeleteOrderInput> get serializer =>
      _$gDeleteOrderInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GDeleteOrderInput.serializer, this)
          as Map<String, dynamic>);
  static GDeleteOrderInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GDeleteOrderInput.serializer, json);
}

abstract class GDeleteOrderSpecInput
    implements Built<GDeleteOrderSpecInput, GDeleteOrderSpecInputBuilder> {
  GDeleteOrderSpecInput._();

  factory GDeleteOrderSpecInput(
          [Function(GDeleteOrderSpecInputBuilder b) updates]) =
      _$GDeleteOrderSpecInput;

  String? get id;
  String? get clientMutationId;
  static Serializer<GDeleteOrderSpecInput> get serializer =>
      _$gDeleteOrderSpecInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GDeleteOrderSpecInput.serializer, this)
          as Map<String, dynamic>);
  static GDeleteOrderSpecInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GDeleteOrderSpecInput.serializer, json);
}

abstract class GDeletePaymentInput
    implements Built<GDeletePaymentInput, GDeletePaymentInputBuilder> {
  GDeletePaymentInput._();

  factory GDeletePaymentInput(
      [Function(GDeletePaymentInputBuilder b) updates]) = _$GDeletePaymentInput;

  String? get id;
  String? get clientMutationId;
  static Serializer<GDeletePaymentInput> get serializer =>
      _$gDeletePaymentInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GDeletePaymentInput.serializer, this)
          as Map<String, dynamic>);
  static GDeletePaymentInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GDeletePaymentInput.serializer, json);
}

abstract class GDeleteProformaInput
    implements Built<GDeleteProformaInput, GDeleteProformaInputBuilder> {
  GDeleteProformaInput._();

  factory GDeleteProformaInput(
          [Function(GDeleteProformaInputBuilder b) updates]) =
      _$GDeleteProformaInput;

  String? get id;
  String? get clientMutationId;
  static Serializer<GDeleteProformaInput> get serializer =>
      _$gDeleteProformaInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GDeleteProformaInput.serializer, this)
          as Map<String, dynamic>);
  static GDeleteProformaInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GDeleteProformaInput.serializer, json);
}

abstract class GDeleteProformaSpecInput
    implements
        Built<GDeleteProformaSpecInput, GDeleteProformaSpecInputBuilder> {
  GDeleteProformaSpecInput._();

  factory GDeleteProformaSpecInput(
          [Function(GDeleteProformaSpecInputBuilder b) updates]) =
      _$GDeleteProformaSpecInput;

  String? get id;
  String? get clientMutationId;
  static Serializer<GDeleteProformaSpecInput> get serializer =>
      _$gDeleteProformaSpecInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GDeleteProformaSpecInput.serializer, this)
          as Map<String, dynamic>);
  static GDeleteProformaSpecInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GDeleteProformaSpecInput.serializer, json);
}

abstract class GGenericScalar
    implements Built<GGenericScalar, GGenericScalarBuilder> {
  GGenericScalar._();

  factory GGenericScalar([String? value]) =>
      _$GGenericScalar((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GGenericScalar> get serializer =>
      _i2.DefaultScalarSerializer<GGenericScalar>(
          (Object serialized) => GGenericScalar((serialized as String?)));
}

abstract class GIncomeModelFormMutationInput
    implements
        Built<GIncomeModelFormMutationInput,
            GIncomeModelFormMutationInputBuilder> {
  GIncomeModelFormMutationInput._();

  factory GIncomeModelFormMutationInput(
          [Function(GIncomeModelFormMutationInputBuilder b) updates]) =
      _$GIncomeModelFormMutationInput;

  String get owner;
  String get customer;
  int get number;
  String? get type;
  double get amount;
  String get dateFa;
  String? get dueDate;
  String? get summary;
  String? get id;
  String? get clientMutationId;
  static Serializer<GIncomeModelFormMutationInput> get serializer =>
      _$gIncomeModelFormMutationInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GIncomeModelFormMutationInput.serializer, this) as Map<String, dynamic>);
  static GIncomeModelFormMutationInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GIncomeModelFormMutationInput.serializer, json);
}

abstract class GIncomeRowModelFormMutationInput
    implements
        Built<GIncomeRowModelFormMutationInput,
            GIncomeRowModelFormMutationInputBuilder> {
  GIncomeRowModelFormMutationInput._();

  factory GIncomeRowModelFormMutationInput(
          [Function(GIncomeRowModelFormMutationInputBuilder b) updates]) =
      _$GIncomeRowModelFormMutationInput;

  String get owner;
  String get income;
  String get proforma;
  String? get perm;
  double get amount;
  String get dateFa;
  String? get summary;
  String? get id;
  String? get clientMutationId;
  static Serializer<GIncomeRowModelFormMutationInput> get serializer =>
      _$gIncomeRowModelFormMutationInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GIncomeRowModelFormMutationInput.serializer, this)
      as Map<String, dynamic>);
  static GIncomeRowModelFormMutationInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GIncomeRowModelFormMutationInput.serializer, json);
}

abstract class GJSONString implements Built<GJSONString, GJSONStringBuilder> {
  GJSONString._();

  factory GJSONString([String? value]) =>
      _$GJSONString((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GJSONString> get serializer =>
      _i2.DefaultScalarSerializer<GJSONString>(
          (Object serialized) => GJSONString((serialized as String?)));
}

class GMotorsExType extends EnumClass {
  const GMotorsExType._(String name) : super(name);

  static const GMotorsExType A_0 = _$gMotorsExTypeA_0;

  static const GMotorsExType A_1 = _$gMotorsExTypeA_1;

  static const GMotorsExType A_2 = _$gMotorsExTypeA_2;

  static const GMotorsExType A_3 = _$gMotorsExTypeA_3;

  static const GMotorsExType A_4 = _$gMotorsExTypeA_4;

  static const GMotorsExType A_5 = _$gMotorsExTypeA_5;

  static const GMotorsExType A_6 = _$gMotorsExTypeA_6;

  static Serializer<GMotorsExType> get serializer => _$gMotorsExTypeSerializer;
  static BuiltSet<GMotorsExType> get values => _$gMotorsExTypeValues;
  static GMotorsExType valueOf(String name) => _$gMotorsExTypeValueOf(name);
}

class GMotorsIc extends EnumClass {
  const GMotorsIc._(String name) : super(name);

  static const GMotorsIc A_0 = _$gMotorsIcA_0;

  static const GMotorsIc A_1 = _$gMotorsIcA_1;

  static const GMotorsIc A_2 = _$gMotorsIcA_2;

  static Serializer<GMotorsIc> get serializer => _$gMotorsIcSerializer;
  static BuiltSet<GMotorsIc> get values => _$gMotorsIcValues;
  static GMotorsIc valueOf(String name) => _$gMotorsIcValueOf(name);
}

class GMotorsIm extends EnumClass {
  const GMotorsIm._(String name) : super(name);

  static const GMotorsIm A_0 = _$gMotorsImA_0;

  static const GMotorsIm A_1 = _$gMotorsImA_1;

  static Serializer<GMotorsIm> get serializer => _$gMotorsImSerializer;
  static BuiltSet<GMotorsIm> get values => _$gMotorsImValues;
  static GMotorsIm valueOf(String name) => _$gMotorsImValueOf(name);
}

class GMotorsIp extends EnumClass {
  const GMotorsIp._(String name) : super(name);

  static const GMotorsIp A_0 = _$gMotorsIpA_0;

  static const GMotorsIp A_1 = _$gMotorsIpA_1;

  static const GMotorsIp A_2 = _$gMotorsIpA_2;

  static const GMotorsIp A_3 = _$gMotorsIpA_3;

  static Serializer<GMotorsIp> get serializer => _$gMotorsIpSerializer;
  static BuiltSet<GMotorsIp> get values => _$gMotorsIpValues;
  static GMotorsIp valueOf(String name) => _$gMotorsIpValueOf(name);
}

class GMotorsKw extends EnumClass {
  const GMotorsKw._(String name) : super(name);

  static const GMotorsKw A_0 = _$gMotorsKwA_0;

  static const GMotorsKw A_1 = _$gMotorsKwA_1;

  static const GMotorsKw A_2 = _$gMotorsKwA_2;

  static const GMotorsKw A_3 = _$gMotorsKwA_3;

  static const GMotorsKw A_4 = _$gMotorsKwA_4;

  static const GMotorsKw A_5 = _$gMotorsKwA_5;

  static const GMotorsKw A_6 = _$gMotorsKwA_6;

  static const GMotorsKw A_7 = _$gMotorsKwA_7;

  static const GMotorsKw A_8 = _$gMotorsKwA_8;

  static const GMotorsKw A_9 = _$gMotorsKwA_9;

  static const GMotorsKw A_10 = _$gMotorsKwA_10;

  static const GMotorsKw A_11 = _$gMotorsKwA_11;

  static const GMotorsKw A_12 = _$gMotorsKwA_12;

  static const GMotorsKw A_13 = _$gMotorsKwA_13;

  static const GMotorsKw A_14 = _$gMotorsKwA_14;

  static const GMotorsKw A_15 = _$gMotorsKwA_15;

  static const GMotorsKw A_16 = _$gMotorsKwA_16;

  static const GMotorsKw A_17 = _$gMotorsKwA_17;

  static const GMotorsKw A_18 = _$gMotorsKwA_18;

  static const GMotorsKw A_19 = _$gMotorsKwA_19;

  static const GMotorsKw A_20 = _$gMotorsKwA_20;

  static const GMotorsKw A_21 = _$gMotorsKwA_21;

  static const GMotorsKw A_22 = _$gMotorsKwA_22;

  static const GMotorsKw A_23 = _$gMotorsKwA_23;

  static const GMotorsKw A_24 = _$gMotorsKwA_24;

  static const GMotorsKw A_25 = _$gMotorsKwA_25;

  static const GMotorsKw A_26 = _$gMotorsKwA_26;

  static const GMotorsKw A_27 = _$gMotorsKwA_27;

  static const GMotorsKw A_28 = _$gMotorsKwA_28;

  static const GMotorsKw A_29 = _$gMotorsKwA_29;

  static const GMotorsKw A_30 = _$gMotorsKwA_30;

  static const GMotorsKw A_31 = _$gMotorsKwA_31;

  static const GMotorsKw A_32 = _$gMotorsKwA_32;

  static const GMotorsKw A_33 = _$gMotorsKwA_33;

  static const GMotorsKw A_34 = _$gMotorsKwA_34;

  static const GMotorsKw A_35 = _$gMotorsKwA_35;

  static const GMotorsKw A_36 = _$gMotorsKwA_36;

  static Serializer<GMotorsKw> get serializer => _$gMotorsKwSerializer;
  static BuiltSet<GMotorsKw> get values => _$gMotorsKwValues;
  static GMotorsKw valueOf(String name) => _$gMotorsKwValueOf(name);
}

class GMotorsSpeed extends EnumClass {
  const GMotorsSpeed._(String name) : super(name);

  static const GMotorsSpeed A_3 = _$gMotorsSpeedA_3;

  static const GMotorsSpeed A_0 = _$gMotorsSpeedA_0;

  static const GMotorsSpeed A_1 = _$gMotorsSpeedA_1;

  static const GMotorsSpeed A_2 = _$gMotorsSpeedA_2;

  static Serializer<GMotorsSpeed> get serializer => _$gMotorsSpeedSerializer;
  static BuiltSet<GMotorsSpeed> get values => _$gMotorsSpeedValues;
  static GMotorsSpeed valueOf(String name) => _$gMotorsSpeedValueOf(name);
}

class GMotorsVoltage extends EnumClass {
  const GMotorsVoltage._(String name) : super(name);

  static const GMotorsVoltage A_0 = _$gMotorsVoltageA_0;

  static const GMotorsVoltage A_1 = _$gMotorsVoltageA_1;

  static const GMotorsVoltage A_2 = _$gMotorsVoltageA_2;

  static const GMotorsVoltage A_3 = _$gMotorsVoltageA_3;

  static const GMotorsVoltage A_4 = _$gMotorsVoltageA_4;

  static const GMotorsVoltage A_5 = _$gMotorsVoltageA_5;

  static Serializer<GMotorsVoltage> get serializer =>
      _$gMotorsVoltageSerializer;
  static BuiltSet<GMotorsVoltage> get values => _$gMotorsVoltageValues;
  static GMotorsVoltage valueOf(String name) => _$gMotorsVoltageValueOf(name);
}

abstract class GMyCustomerMutationInput
    implements
        Built<GMyCustomerMutationInput, GMyCustomerMutationInputBuilder> {
  GMyCustomerMutationInput._();

  factory GMyCustomerMutationInput(
          [Function(GMyCustomerMutationInputBuilder b) updates]) =
      _$GMyCustomerMutationInput;

  int? get id;
  String get name;
  String get owner;
  String? get clientMutationId;
  static Serializer<GMyCustomerMutationInput> get serializer =>
      _$gMyCustomerMutationInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GMyCustomerMutationInput.serializer, this)
          as Map<String, dynamic>);
  static GMyCustomerMutationInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GMyCustomerMutationInput.serializer, json);
}

abstract class GMyMutationInput
    implements Built<GMyMutationInput, GMyMutationInputBuilder> {
  GMyMutationInput._();

  factory GMyMutationInput([Function(GMyMutationInputBuilder b) updates]) =
      _$GMyMutationInput;

  String get testField;
  String? get clientMutationId;
  static Serializer<GMyMutationInput> get serializer =>
      _$gMyMutationInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GMyMutationInput.serializer, this)
          as Map<String, dynamic>);
  static GMyMutationInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GMyMutationInput.serializer, json);
}

abstract class GPaymentModelFormMutationInput
    implements
        Built<GPaymentModelFormMutationInput,
            GPaymentModelFormMutationInputBuilder> {
  GPaymentModelFormMutationInput._();

  factory GPaymentModelFormMutationInput(
          [Function(GPaymentModelFormMutationInputBuilder b) updates]) =
      _$GPaymentModelFormMutationInput;

  String get owner;
  String get xprefId;
  int get number;
  String? get type;
  int? get tempNumber;
  double get amount;
  GDateTime get paymentDate;
  String get dateFa;
  String? get dateFaText;
  String? get dueDate;
  String? get dueDateText;
  String? get summary;
  bool? get isActive;
  bool? get isImported;
  String? get id;
  String? get clientMutationId;
  static Serializer<GPaymentModelFormMutationInput> get serializer =>
      _$gPaymentModelFormMutationInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GPaymentModelFormMutationInput.serializer, this) as Map<String, dynamic>);
  static GPaymentModelFormMutationInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GPaymentModelFormMutationInput.serializer, json);
}

abstract class GPrefSpecModelFormMutationInput
    implements
        Built<GPrefSpecModelFormMutationInput,
            GPrefSpecModelFormMutationInputBuilder> {
  GPrefSpecModelFormMutationInput._();

  factory GPrefSpecModelFormMutationInput(
          [Function(GPrefSpecModelFormMutationInputBuilder b) updates]) =
      _$GPrefSpecModelFormMutationInput;

  int get code;
  String get owner;
  String get xprefId;
  String get reqspecEq;
  int get qty;
  String get type;
  double? get price;
  double get kw;
  int get rpm;
  int get voltage;
  int? get ipType;
  int? get icType;
  String? get im;
  String? get ip;
  String? get ic;
  String? get summary;
  String? get considerations;
  bool? get isActive;
  bool? get sent;
  int? get qtySent;
  bool? get finished;
  String? get id;
  String? get clientMutationId;
  static Serializer<GPrefSpecModelFormMutationInput> get serializer =>
      _$gPrefSpecModelFormMutationInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GPrefSpecModelFormMutationInput.serializer, this)
      as Map<String, dynamic>);
  static GPrefSpecModelFormMutationInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GPrefSpecModelFormMutationInput.serializer, json);
}

abstract class GProformaModelFormMutationInput
    implements
        Built<GProformaModelFormMutationInput,
            GProformaModelFormMutationInputBuilder> {
  GProformaModelFormMutationInput._();

  factory GProformaModelFormMutationInput(
          [Function(GProformaModelFormMutationInputBuilder b) updates]) =
      _$GProformaModelFormMutationInput;

  String get owner;
  String get reqId;
  int get number;
  int? get numberTd;
  int? get numberPartOrder;
  String get dateFa;
  String? get dateFaText;
  GDateTime? get dateModified;
  String get expDateFa;
  int? get permNumber;
  String? get permDate;
  String? get dueDate;
  String? get dueDateDays;
  String? get summary;
  bool? get verified;
  bool? get perm;
  String? get followUp;
  bool? get toFollow;
  bool? get on;
  String? get issueType;
  bool? get signed;
  bool? get cancelled;
  String? get id;
  String? get clientMutationId;
  static Serializer<GProformaModelFormMutationInput> get serializer =>
      _$gProformaModelFormMutationInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GProformaModelFormMutationInput.serializer, this)
      as Map<String, dynamic>);
  static GProformaModelFormMutationInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GProformaModelFormMutationInput.serializer, json);
}

abstract class GProformaSpecInput
    implements Built<GProformaSpecInput, GProformaSpecInputBuilder> {
  GProformaSpecInput._();

  factory GProformaSpecInput([Function(GProformaSpecInputBuilder b) updates]) =
      _$GProformaSpecInput;

  String? get eqId;
  String? get id;
  int? get qty;
  double? get price;
  static Serializer<GProformaSpecInput> get serializer =>
      _$gProformaSpecInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GProformaSpecInput.serializer, this)
          as Map<String, dynamic>);
  static GProformaSpecInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GProformaSpecInput.serializer, json);
}

abstract class GReqSpecModelFormMutationInput
    implements
        Built<GReqSpecModelFormMutationInput,
            GReqSpecModelFormMutationInputBuilder> {
  GReqSpecModelFormMutationInput._();

  factory GReqSpecModelFormMutationInput(
          [Function(GReqSpecModelFormMutationInputBuilder b) updates]) =
      _$GReqSpecModelFormMutationInput;

  int get code;
  String get reqId;
  String get owner;
  String get type;
  int get qty;
  double get kw;
  int? get rpm;
  String get rpmNew;
  int get voltage;
  int? get ipType;
  int? get icType;
  String? get im;
  String? get ip;
  String? get ic;
  String? get ie;
  String? get frameSize;
  String? get summary;
  bool? get tech;
  bool? get price;
  bool? get permission;
  bool? get sent;
  bool? get cancelled;
  bool? get finished;
  String? get id;
  String? get clientMutationId;
  static Serializer<GReqSpecModelFormMutationInput> get serializer =>
      _$gReqSpecModelFormMutationInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GReqSpecModelFormMutationInput.serializer, this) as Map<String, dynamic>);
  static GReqSpecModelFormMutationInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GReqSpecModelFormMutationInput.serializer, json);
}

abstract class GRequestModelFormMutationInput
    implements
        Built<GRequestModelFormMutationInput,
            GRequestModelFormMutationInputBuilder> {
  GRequestModelFormMutationInput._();

  factory GRequestModelFormMutationInput(
          [Function(GRequestModelFormMutationInputBuilder b) updates]) =
      _$GRequestModelFormMutationInput;

  String get customer;
  String get owner;
  int get number;
  int? get tempNumber;
  int? get parentNumber;
  String get dateFa;
  String get yearNumber;
  String? get dateFaText;
  String? get dateFinished;
  BuiltList<String>? get colleagues;
  String? get summary;
  bool? get addedByCustomer;
  bool? get editedByCustomer;
  bool? get finished;
  int? get numberPart;
  GDateTime? get dateModified;
  String? get followUp;
  bool? get toFollow;
  bool? get on;
  String? get id;
  String? get clientMutationId;
  static Serializer<GRequestModelFormMutationInput> get serializer =>
      _$gRequestModelFormMutationInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GRequestModelFormMutationInput.serializer, this) as Map<String, dynamic>);
  static GRequestModelFormMutationInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GRequestModelFormMutationInput.serializer, json);
}

abstract class GUpdateCustomerInput
    implements Built<GUpdateCustomerInput, GUpdateCustomerInputBuilder> {
  GUpdateCustomerInput._();

  factory GUpdateCustomerInput(
          [Function(GUpdateCustomerInputBuilder b) updates]) =
      _$GUpdateCustomerInput;

  GCustomerCreateInput? get customer;
  String get id;
  String? get clientMutationId;
  static Serializer<GUpdateCustomerInput> get serializer =>
      _$gUpdateCustomerInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GUpdateCustomerInput.serializer, this)
          as Map<String, dynamic>);
  static GUpdateCustomerInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GUpdateCustomerInput.serializer, json);
}
