import 'package:get/get.dart';
import 'package:getx_firebase_bmi_app/modules/register/register_controller.dart';

class Registerbinding implements Bindings{
  @override
  void dependencies() {
    Get.put(RegisterController());
  }

}