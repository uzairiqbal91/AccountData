// To parse this JSON data, do
//
//     final accountsModel = accountsModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'accounts_model.freezed.dart';
part 'accounts_model.g.dart';

AccountsModel accountsModelFromJson(String str) => AccountsModel.fromJson(json.decode(str));

String accountsModelToJson(AccountsModel data) => json.encode(data.toJson());

@freezed
abstract class AccountsModel with _$AccountsModel {
  const factory AccountsModel({
    required dynamic odataContext,
    required List<Value> value,
  }) = _AccountsModel;

  factory AccountsModel.fromJson(Map<dynamic, dynamic> json) => _$AccountsModelFromJson(json);
}

@freezed
abstract class Value with _$Value {
  const factory Value({

    required dynamic name,
    required dynamic address1_stateorprovince,
    required dynamic accountnumber,
    required dynamic statecode,
    required dynamic entityimage_url,

  }) = _Value;

  factory Value.fromJson(Map<dynamic, dynamic> json) => _$ValueFromJson(json);
}


