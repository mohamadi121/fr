import 'package:isar/isar.dart';
part 'market_contact_model.g.dart';

@Collection()
class MarketContactModel {
  Id? id;
  int? market;
  String? firstMobileNumber;
  String? secondMobileNumber;
  String? telephone;
  String? fax;
  String? email;
  String? websiteUrl;
  String? instagramId;
  String? telegramId;

  MarketContactModel(
      {this.market,
      this.firstMobileNumber,
      this.secondMobileNumber,
      this.telephone,
      this.fax,
      this.email,
      this.websiteUrl,
      this.instagramId,
      this.telegramId})
      : id = Isar.autoIncrement;

  MarketContactModel.fromJson(Map<String, dynamic> json) {
    market = json['market'];
    firstMobileNumber = json['first_mobile_number'];
    secondMobileNumber = json['second_mobile_number'];
    telephone = json['telephone'];
    fax = json['fax'];
    email = json['email'];
    websiteUrl = json['website_url'];
    instagramId = json['instagram_id'];
    telegramId = json['telegram_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['market'] = market;
    data['first_mobile_number'] = firstMobileNumber;
    data['second_mobile_number'] = secondMobileNumber;
    data['telephone'] = telephone;
    data['fax'] = fax;
    data['email'] = email;
    data['website_url'] = websiteUrl;
    data['instagram_id'] = instagramId;
    data['telegram_id'] = telegramId;
    return data;
  }
}

// class MarketLocation {
//   int? market;
//   int? city;
//   String? address;
//   String? zipCode;
//   String? latitude;
//   String? longitude;
//
//   MarketLocation(
//       {this.market,
//       this.city,
//       this.address,
//       this.zipCode,
//       this.latitude,
//       this.longitude});
//
//   MarketLocation.fromJson(Map<String, dynamic> json) {
//     market = json['market'];
//     city = json['city'];
//     address = json['address'];
//     zipCode = json['zip_code'];
//     latitude = json['latitude'];
//     longitude = json['longitude'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['market'] = market;
//     data['city'] = city;
//     data['address'] = address;
//     data['zip_code'] = zipCode;
//     data['latitude'] = latitude;
//     data['longitude'] = longitude;
//     return data;
//   }
// }
