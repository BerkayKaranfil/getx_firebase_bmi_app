import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PasswordTextFormField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const PasswordTextFormField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: Colors.black,
      obscureText: obscureText,
      cursorHeight: 3.h,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: Color(0xffFFFFFF),
        enabledBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(width: 0.5.w, color: Color(0xff032681))),
        suffixIcon: Icon(Icons.visibility, color: Colors.black45,)      
      ),
    );
  }
}
