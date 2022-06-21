// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accounts_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccountsModel _$$_AccountsModelFromJson(Map<dynamic, dynamic> json) =>
    _$_AccountsModel(
      odataContext: json['odataContext'],
      value: (json['value'] as List<dynamic>)
          .map((e) => Value.fromJson(e as Map<dynamic, dynamic>))
          .toList(),
    );

Map<dynamic, dynamic> _$$_AccountsModelToJson(_$_AccountsModel instance) =>
    <dynamic, dynamic>{
      'odataContext': instance.odataContext,
      'value': instance.value,
    };

_$_Value _$$_ValueFromJson(Map<dynamic, dynamic> json) => _$_Value(
      name: json['name'],
      address1_stateorprovince: json['address1_stateorprovince'],
      accountnumber: json['accountnumber'],
      statecode: json['statecode'],
      entityimage_url: json['entityimage_url'],
    );

Map<dynamic, dynamic> _$$_ValueToJson(_$_Value instance) => <dynamic, dynamic>{
      'name': instance.name,
      'address1_stateorprovince': instance.address1_stateorprovince,
      'accountnumber': instance.accountnumber,
      'statecode': instance.statecode,
      'entityimage_url': instance.entityimage_url,
    };
