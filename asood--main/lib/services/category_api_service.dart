import 'package:http/http.dart' as http;

import '../shared/constants/links.dart';
import 'api_client.dart';
import 'api_status.dart';

class CategoryApiService{

  ApiClient apiClient =
  ApiClient(appBaseUrl: '${BaseUrls.baseUrl}category/user/');

  Future getCategoryList() async {
    var uri = 'group/list/';
    try {
      http.Response res = await apiClient.getData(
        uri,
      );
      return ApiStatus(res);
    } catch (e) {
      return CustomApiStatus();
    }
  }

  Future getMainSubCategoryList(int categoryId) async {
    var uri = 'list/$categoryId';
    try {
      http.Response res = await apiClient.getData(
        uri,
      );
      return ApiStatus(res);
    } catch (e) {
      return CustomApiStatus();
    }
  }

  Future getSubCategoryList(int mainSubCategoryId) async {
    var uri = 'sub/list/$mainSubCategoryId';
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
