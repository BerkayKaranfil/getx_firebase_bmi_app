import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_firebase_bmi_app/routes/app_pages.dart';

import '../../shared/services/auth_service.dart';

class LoginController extends GetxController {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  AuthService auth = AuthService();

  // RxBool isAutoValidate = false.obs;
  // RxBool isRequestAvaible = false.obs;

  /* Future<void>login()async{
   
    await auth.signInUser(email.text, password.text);
  } */

  loginWait() async {
    if (email.text.isNotEmpty && password.text.isNotEmpty) {
      Get.dialog(
          barrierDismissible: false,
          Center(
            child: CircularProgressIndicator(),
          ));
    }
    await auth.signInUser(email.text, password.text);
    Get.toNamed(Routes.HOME);
  }
}
