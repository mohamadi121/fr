// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:image_picker/image_picker.dart';

import '../models/market_base.dart';
import '../models/market_contact_model.dart';
import '../services/api_status.dart';
import '../services/isar_service.dart';
import '../services/market_api_service.dart';

class MarketRepository {
  late final IsarObjectService isar;

  final MarketApiService marketApiService = MarketApiService();
  MarketRepository() {
    isar = IsarObjectService<MarketBaseModel>(MarketBaseModelSchema);
    print(isar);
  }

//write all codes depends on market api service for repository here
  Future<dynamic> createMarketContact(MarketContactModel marketContact) async {
    return await marketApiService.createMarketContact(marketContact);
  }

  Future<dynamic> creatMarketBase(String type, String businessId, String name,
      String description, int subCategory, String slogan) async {
    var res = await marketApiService.creatMarketBase(
        type, businessId, name, description, subCategory, slogan);
    //save the market base model to isar if its success
    if (res is Success) {
      final json = jsonDecode(res.response.toString());
      final marketBase = MarketBaseModel.fromJson(json);
      await isar.create(marketBase);
    }
    return res;
  }

  Future<dynamic> creatMarketLocation(MarketLocation marketLocation) async {
    return await marketApiService.createMarketLocation(marketLocation);
  }

  Future<dynamic> uploadMarketBackground(
    XFile imagesFile,
    marketId,
  ) async {
    return await marketApiService.uploadMarketBackground(
      imagesFile,
      marketId,
    );
  }

  Future<dynamic> getMarketList() async {
    return await marketApiService.getMarketList();
  }

  Future<dynamic> inactiveMarket(marketId) async {
    return await marketApiService.inactiveMarket(marketId);
  }

  Future<dynamic> queueMarket(marketId) async {
    return await marketApiService.queueMarket(marketId);
  }

  Future<dynamic> deleteMarketBackground(marketId) async {
    return await marketApiService.deleteMarketBackground(marketId);
  }

//get market sliders repository
  Future<dynamic> getMarketSliders(marketId) async {
    return await marketApiService.getMarketSlider(marketId);
  }

//upload market logo repository
  Future<dynamic> uploadMarketLogo(
    XFile imagesFile,
    marketId,
  ) async {
    return await marketApiService.uploadMarketLogo(
      imagesFile,
      marketId,
    );
  }

  //deleteMarketLogo
  Future<dynamic> deleteMarketLogo(marketId) async {
    return await marketApiService.deleteMarketLogo(marketId);
  }

  //createMarketSlider
  Future<dynamic> createMarketSlider(marketId, slider) async {
    return await marketApiService.createMarketSlider(marketId, slider);
  }

  //modifyMarketSlider
  Future<dynamic> modifyMarketSlider(body, sliderId) async {
    return await marketApiService.modifyMarketSlider(body, sliderId);
  }

  //deleteMarketSlider
  Future<dynamic> deleteMarketSlider(sliderId) async {
    return await marketApiService.deleteMarketSlider(sliderId);
  }
}
