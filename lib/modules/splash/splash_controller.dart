import 'package:get/get.dart';
import 'package:getx_firebase_bmi_app/routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onReady() async {
    await Future.delayed(const Duration(milliseconds: 5000));
    Get.toNamed(Routes.LOGIN);
    super.onReady();
  }
}
