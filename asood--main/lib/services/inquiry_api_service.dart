import 'dart:io';

import 'package:http/http.dart' as http;

import '../shared/constants/links.dart';
import 'api_client.dart';
import 'api_status.dart';

class InquiryAPIService {
  ApiClient apiClient = ApiClient(appBaseUrl: '${BaseUrls.baseUrl}inquiry/');

  Future submitInquiry(
    String inquiryType,
    String inquiryTitle,
    String? inquiryDescription,
    String? inquiryDetails,
    String inquiryCategory,
    double? inquiryAmount,
    String? inquiryUnit,
    String? inquiryName,
    List<File>? inquiryImages,
  ) async {
    var body = {};
    var uri = '';
    try {
      http.Response res = await apiClient.postData(
        uri,
        body,
      );
      return ApiStatus(res);
    } catch (e) {
      return CustomApiStatus();
    }
  }
}
