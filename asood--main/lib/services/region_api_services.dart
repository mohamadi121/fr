import 'package:http/http.dart' as http;

import '../shared/constants/links.dart';
import 'api_client.dart';
import 'api_status.dart';

class RegionApiServices{

  ApiClient apiClient =
  ApiClient(appBaseUrl: '${BaseUrls.baseUrl}region/user/');

  Future getCountryList() async {
    var uri = 'country/list/';
    try {
      http.Response res = await apiClient.getData(
        uri,
      );
      return ApiStatus(res);
    } catch (e) {
      return CustomApiStatus();
    }
  }

  Future getProvinceList(countryId) async {
    var uri = 'province/list/$countryId';
    try {
      http.Response res = await apiClient.getData(
        uri,
      );
      return ApiStatus(res);
    } catch (e) {
      return CustomApiStatus();
    }
  }

  Future getCityList(provinceId) async {
    var uri = 'city/list/$provinceId';
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
