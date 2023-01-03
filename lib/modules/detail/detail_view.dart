import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:getx_firebase_bmi_app/modules/detail/detail_controller.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DetailScreen extends GetView<DetailController> {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE5E5E5),
        body: Padding(
          padding: EdgeInsets.all(5.h),
          child: Column(
            children: [
              Card(
                elevation: 20,
                color: Colors.white,
                margin: EdgeInsets.only(bottom: 35.h),
                child: Padding(
                  padding: EdgeInsets.all(3.h),
                  child: SizedBox(
                    height: 40.h,
                    width: 80.w,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Your BMI is",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 5.h),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          controller.bmi!,
                          style: TextStyle(
                              fontSize: 5.h,
                              color: controller.chanceResponseColor()),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Container(
                          height: 3.h,
                          width: 70.w,
                          child: FittedBox(
                            child: Text(
                              "${controller.bmiStatus}",
                              style: TextStyle(
                                  fontSize: 2.5.h,
                                  color: controller.chanceResponseColor()),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff032681)),
                  onPressed: () {
                    Get.back();
                  },
                  child: Text("Recalculate"))
            ],
          ),
        ));
  }
}
