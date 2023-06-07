import 'package:dio/dio.dart';
import 'package:get/get.dart';


import '../../../constant/app_url.dart';
import '../../../data/model/info_passport.dart';
import '../../../data/network/service/api_exception.dart';

class PassportController extends GetxController with StateMixin {
  var passportData = <InfoPassport>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchPassportData();
    super.onInit();
  }

  void fetchPassportData() async {
    try {
      isLoading(true);
      var dio = Dio();
      var response = await dio.get(AppUrl.baseUrl + AppUrl.users);
      if (response.statusCode == 200) {
        List<dynamic> data = response.data;
        passportData.value = data.map((e) => InfoPassport.fromJson(e)).toList();

      }
    } on DioError catch (e) {
      final ApiException apiException = ApiException.fromDioError(e);
      change(null, status: RxStatus.error(apiException.toString()));
    } finally {
      isLoading(false);
    }
  }
}
