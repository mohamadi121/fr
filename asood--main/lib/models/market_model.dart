

//part 'market_model.g.dart';

class MarketModel {
  String? businessId;
  String? name;
  int? subCategory;
  String? status;
  bool? isPaid;
  String? createdAt;
  String? inactiveUrl;
  String? queueUrl;
  String? logoImg;
  String? backgroundImg;

  MarketModel(
      {this.businessId,
      this.name,
      this.subCategory,
      this.status,
      this.isPaid,
      this.createdAt,
      this.inactiveUrl,
      this.queueUrl,
      this.logoImg,
      this.backgroundImg});

  MarketModel.fromJson(Map<String, dynamic> json) {
    businessId = json['business_id'];
    name = json['name'];
    subCategory = json['sub_category'];
    status = json['status'];
    isPaid = json['is_paid'];
    createdAt = json['created_at'];
    inactiveUrl = json['inactive_url'];
    queueUrl = json['queue_url'];
    logoImg = json['logo_img'];
    backgroundImg = json['background_img'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['business_id'] = businessId;
    data['name'] = name;
    data['sub_category'] = subCategory;
    data['status'] = status;
    data['is_paid'] = isPaid;
    data['created_at'] = createdAt;
    data['inactive_url'] = inactiveUrl;
    data['queue_url'] = queueUrl;
    data['logo_img'] = logoImg;
    data['background_img'] = backgroundImg;
    return data;
  }
}
