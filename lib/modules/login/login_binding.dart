import 'package:get/get.dart';
import 'package:getx_firebase_bmi_app/modules/login/login_controller.dart';

class LoginBinding implements Bindings{
  @override
  void dependencies() {
    Get.put(LoginController());
  }

}