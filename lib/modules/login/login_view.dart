import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:getx_firebase_bmi_app/modules/login/login_controller.dart';
import 'package:getx_firebase_bmi_app/routes/app_pages.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../widgets/text_form_field_widget.dart';

class LoginScreen extends GetView<LoginController> {
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      // resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        reverse: true,
        child: Padding(
          padding: EdgeInsets.only(right: 5.w, left: 5.w),
          child: Column(
            children: [
              SizedBox(
                height: 30.h,
              ),
              CustomTextField(
                  controller: controller.email,
                  hintText: "Email",
                  obscureText: false),
              SizedBox(
                height: 5.h,
              ),
              CustomTextField(
                  controller: controller.password,
                  hintText: "Password",
                  obscureText: false),
              SizedBox(
                height: 5.h,
              ),
              Container(
                width: 90.w,
                height: 7.h,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff032681),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.h))),
                    onPressed: () {
                      controller.auth.signInUser(controller.email.text, controller.password.text);
                     
                    },
                    child: Row(
                      children: [
                        Spacer(
                          flex: 8,
                        ),
                        Text("LOGIN"),
                        Spacer(
                          flex: 5,
                        ),
                        Container(
                          height: 5.h,
                          width: 10.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40)
                          ),
                          child: Icon(Icons.arrow_right_alt, color: Color(0xff032681),),
                        ),
                       
                      ],
                    )
                    //Text("LOGIN")
                    ),
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                width: 55.w,
                child: Row(
                  children: [
                    Text(
                      "Do not have account?",
                      style: TextStyle(color: Color(0xff949494)),
                    ),
                    TextButton(
                        onPressed: () {
                          Get.toNamed(Routes.REGISTER);
                        },
                        child: Text(
                          "Sign up.",
                          style: TextStyle(
                              color: Color(0xff949494),
                              fontSize: 2.h,
                              fontWeight: FontWeight.bold),
                        )),
                    /* Padding(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom > 0
                                ? 27.h
                                : 0)), */
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
