import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:getx_firebase_bmi_app/modules/splash/splash_controller.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100.h,
        width: 100.w,
        child: Center(
          child: Icon(Icons.flutter_dash, size: 20.h, color: Color(0xff032681),),
        ),
        /* child: Image.asset(
          "assets/splash5.jpg",
          fit: BoxFit.fill,
        ), */
      ),
    );
  }
}
