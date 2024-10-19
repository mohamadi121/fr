// import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/discount_model.dart';
import '../shared/constants/links.dart';
import 'api_client.dart';
import 'api_status.dart';

class DiscountApiService {
  ApiClient apiClient =
      ApiClient(appBaseUrl: '${BaseUrls.baseUrl}discount/user/');

//create discount
  Future createDiscount(Discount discount) async {
    var uri = 'create/';

    try {
      http.Response res = await apiClient.postData(uri, discount.toJson());
      return ApiStatus(res);
    } catch (e) {
      return CustomApiStatus();
    }
  }

  //get discounts
  Future getDiscounts() async {
    var uri = 'list/';

    try {
      http.Response res = await apiClient.getData(
        uri,
      );
      return ApiStatus(res);
    } catch (e) {
      return CustomApiStatus();
    }
  }
}
