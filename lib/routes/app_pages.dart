import 'package:get/get.dart';
import 'package:getx_firebase_bmi_app/modules/detail/detail_binding.dart';
import 'package:getx_firebase_bmi_app/modules/detail/detail_view.dart';
import 'package:getx_firebase_bmi_app/modules/home/home_binding.dart';
import 'package:getx_firebase_bmi_app/modules/home/home_view.dart';
import 'package:getx_firebase_bmi_app/modules/login/login_binding.dart';
import 'package:getx_firebase_bmi_app/modules/login/login_view.dart';
import 'package:getx_firebase_bmi_app/modules/splash/splash_binding.dart';
import 'package:getx_firebase_bmi_app/modules/splash/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
        name: Routes.SPLASH,
        page: () => SplashScreen(),
        binding: SplashBinding()),
    GetPage(
      name: Routes.HOME,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.DETAIL,
      page: () => DetailScreen(),
      binding: DetailBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginScreen(),
      binding: LoginBinding(),
    ),
  ];
}
