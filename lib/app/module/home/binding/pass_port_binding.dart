import 'package:get/get.dart';

import '../controller/passport_controller.dart';

class PassportBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PassportController>(() => PassportController());
  }
}
