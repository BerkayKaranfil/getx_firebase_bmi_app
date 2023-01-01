import 'package:get/get.dart';
import 'package:getx_firebase_bmi_app/routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onReady() async {
    await Future.delayed(const Duration(milliseconds: 500));
    Get.toNamed(Routes.HOME);
    super.onReady();
  }
}
