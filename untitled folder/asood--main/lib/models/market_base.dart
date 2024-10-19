import 'dart:convert';
// import 'dart:ffi';

import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';

part 'market_base.g.dart';

@Collection(inheritance: false)
class MarketBaseModel extends Equatable {
  final Id id;
  final String marketType;
  final String businessId;
  final String name;
  final String description;
  final int subCategory;
  final String slogan;
  const MarketBaseModel({
    required this.id,
    required this.marketType,
    required this.businessId,
    required this.name,
    required this.description,
    required this.subCategory,
    required this.slogan,
  });

  @ignore
  @override
  List<Object> get props =>
      [id, marketType, businessId, name, description, subCategory, slogan];

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'marketType': marketType,
      'businessId': businessId,
      'name': name,
      'description': description,
      'subCategory': subCategory,
      'slogan': slogan,
    };
  }

  factory MarketBaseModel.fromMap(Map<String, dynamic> map) {
    return MarketBaseModel(
      id: map["data"]['market'] as int,
      marketType: map["data"]['type'] as String,
      businessId:
          map["data"]['type'] /* map["data"]['business_id'] */ as String,
      name: map["data"]['type'] /* map["data"]['name'] */ as String,
      description:
          map["data"]['type'] /* map["data"]['description'] */ as String,
      subCategory:
          map["data"]['market'] /* map["data"]['sub_category'] */ as int,
      slogan: map["data"]['type'] /* map["data"]['slogan'] */ as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory MarketBaseModel.fromJson(source) => MarketBaseModel.fromMap(source);
}
