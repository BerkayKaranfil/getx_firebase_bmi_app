import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_firebase_bmi_app/modules/splash/splash_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'di.dart';
import 'routes/app_pages.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await DependencyInjection.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, Orientation, ScreenType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          
          getPages: AppPages.routes,
          initialRoute: Routes.SPLASH,
          enableLog: true, // Geliştirme bitince false'a çek
        );
      },
    );
  }
}
