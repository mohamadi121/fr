// import 'dart:convert';
import 'package:http/http.dart' as http;

import '../shared/constants/links.dart';
import 'api_client.dart';
import 'api_status.dart';

class CartApiService {
  ApiClient apiClient = ApiClient(appBaseUrl: '${BaseUrls.baseUrl}cart/user/');

  //add product to cart by id and count
  Future addProductToCart(productId, count) async {
    var body = {"product": productId, "number": count};
    var uri = 'update/';
    try {
      http.Response res = await apiClient.postData(uri, body);
      return ApiStatus(res);
    } catch (e) {
      return CustomApiStatus();
    }
  }

//get cart deatails
  Future getCartDetails() async {
    var uri = 'detail/';
    try {
      http.Response res = await apiClient.getData(uri);
      return ApiStatus(res);
    } catch (e) {
      return CustomApiStatus();
    }
  }
}

class OrderApiService {
  ApiClient apiClient = ApiClient(appBaseUrl: '${BaseUrls.baseUrl}order/user/');

  //get orders
  Future getOrders() async {
    var uri = 'list/';
    try {
      http.Response res = await apiClient.getData(uri);
      return ApiStatus(res);
    } catch (e) {
      return CustomApiStatus();
    }
  }

  //create order
  Future createOrder(body) async {
    var uri = 'create/';
    try {
      http.Response res = await apiClient.postData(uri, body);
      return ApiStatus(res);
    } catch (e) {
      return CustomApiStatus();
    }
  }
}
