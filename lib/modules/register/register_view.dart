import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:getx_firebase_bmi_app/modules/register/register_controller.dart';
import 'package:getx_firebase_bmi_app/routes/app_pages.dart';
import 'package:getx_firebase_bmi_app/widgets/text_form_field_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class RegisterScreen extends GetView<RegisterController> {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Color(0xffE5E5E5),

      // resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        // reverse: true,
        child: Padding(
          padding: EdgeInsets.only(right: 5.w, left: 5.w),
          child: Column(
            children: [
              SizedBox(
                height: 30.h,
              ),
              CustomTextField(
                  controller: controller.email,
                  hintText: "Email adresinizi giriniz",
                  obscureText: false),
              SizedBox(
                height: 5.h,
              ),
              CustomTextField(
                  controller: controller.password,
                  hintText: "Password giriniz",
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
                      controller.auth.createUser(
                          controller.email.text, controller.password.text);
                     
                    },
                    child: Row(
                      children: [
                        Spacer(
                          flex: 8,
                        ),
                        Text("REGISTER"),
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
                    //Text("REGISTER"),
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
