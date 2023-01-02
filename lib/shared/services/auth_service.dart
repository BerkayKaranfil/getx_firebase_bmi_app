import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:getx_firebase_bmi_app/modules/login/login_controller.dart';
import 'package:getx_firebase_bmi_app/routes/app_pages.dart';

class AuthService extends GetxService {
  Future<AuthService> init() async {
    return this;
  }



   createUser(inputEmail, inputPassword) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
            email: inputEmail,
            password: inputPassword,
          )
          .then((value) => Get.toNamed(Routes.LOGIN));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return Get.defaultDialog(title: "The password provided is too weak.");
      } else if (e.code == 'email-already-in-use') {
        return Get.defaultDialog(
            title: "The account already exists for that email.");
      }
    } catch (e) {
      print(e);
    }
  }

  signInUser(inputEmail, inputPassword) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: inputEmail, password: inputPassword);
         // .then((value) => Get.toNamed(Routes.HOME));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return Get.defaultDialog(title: "No user found for that email.");
      } else if (e.code == 'wrong-password') {
        return Get.defaultDialog(
            title: "Wrong password provided for that user.");
      }
    } catch (e){
      print(e);
    }
  }
}
