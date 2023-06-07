import 'package:dio/dio.dart';

import '../../../constant/app_url.dart';
import '../service/api_service.dart';

class PassportApi {
  final ApiService _apiService = ApiService();

  Future<Response> getUsers() async {
    try {
      final Response response = await _apiService.get(AppUrl.users);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
