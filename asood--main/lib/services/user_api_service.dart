// import 'dart:convert';
import 'package:http/http.dart' as http;

import '../shared/constants/constants.dart';
import '../shared/constants/links.dart';
import 'api_client.dart';
import 'api_status.dart';

class UserApiService {
  ApiClient apiClient = ApiClient(appBaseUrl: '${BaseUrls.baseUrl}user/');

  //send code verification to user by server
  Future userAuth(String number) async {
    var body = {"mobile_number": number};
    var uri = 'pin/create/';
    try {
      http.Response res =
          await apiClient.postData(uri, body, headers: Colora.simpleHeader);

      return ApiStatus(res);
    } catch (e) {
      return CustomApiStatus();
    }
  }

  //verify the sms code verification
  Future verifyUser(String number, String code) async {
    var body = {"mobile_number": number, 'pin': code};
    var uri = 'pin/verify/';
    try {
      http.Response res =
          await apiClient.postData(uri, body, headers: Colora.simpleHeader);
      return ApiStatus(res);
    } catch (e) {
      return CustomApiStatus();
    }
  }

  //get user advertises
  Future getAdvertises() async {
    var uri = 'advertise/';
    try {
      http.Response res = await apiClient.getData(uri);
      return ApiStatus(res);
    } catch (e) {
      return CustomApiStatus();
    }
  }

  //get user contacts
  Future getContacts() async {
    var uri = 'contact/';
    try {
      http.Response res = await apiClient.getData(uri);
      return ApiStatus(res);
    } catch (e) {
      return CustomApiStatus();
    }
  }

  //log out user
  Future logout() async {
    var uri = 'logout/';
    var token = '';
    try {
      http.Response res = await apiClient
          .getData(uri, headers: {'Authorization': 'Token $token'});
      return ApiStatus(res);
    } catch (e) {
      return CustomApiStatus();
    }
  }

}
