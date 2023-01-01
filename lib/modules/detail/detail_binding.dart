import 'package:get/get.dart';
import 'package:getx_firebase_bmi_app/modules/detail/detail_controller.dart';

class DetailBinding implements Bindings{
  @override
  void dependencies() {
    Get.put(DetailController());
  }
}