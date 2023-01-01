import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/app_pages.dart';

class HomeController extends GetxController{
  var height = 0.0.obs;
  var weight = 0.0.obs;
  var age = 0.0.obs;
  var bmi = "".obs;
  var bmiStatus = "";
  var result = 0.0;
  var responseColor = "";
  Color responseColorExtra = Colors.white; // Bunu kullanarak switch case kullanmadan yapılabilir. (Bu projede kullanılmıyor.)
  //Gender Button//
  List<String> genderList = ["Male", "Female", "Other"];
  RxInt genderIndex = 0.obs;

  chanceGender(int genderType) {
    genderIndex.value = genderType;
    print(genderIndex);
  }
  //Gender Button//

  void bmiCalculator() {
    result = weight / ((height / 100) * (height / 100));
    // print(result);
    if (result < 18.5) {
      bmi.value = result.toString();
      bmiStatus = "You are underweight.";
      responseColor = "orange";
      // Buraya responseColor yerine responseColorExtra = Colors.orange yazabilirdik bu sayede switch case kullanmamıza gerek kalmazdı.
    } else if (result >= 18.5 && result <= 24.9) {
      bmi.value = result.toString();
      bmiStatus = "You are healthy.";
      responseColor = "green";
    } else if (result >= 25 && result <= 29.9) {
      bmi.value = result.toString();
      bmiStatus = "You are overweight.";
      responseColor = "red";
    } else if (result >= 30 && result <= 39.9) {
      bmi.value = result.toString();
      bmiStatus = "You are obese.";
      responseColor = "red";
    } else {
      bmi.value = result.toString();
      bmiStatus = "You are morbidly obese.";
      responseColor = "red";
    }
  }


  void setDetail() {
    if (age.value <= 0 || age.value > 120) {
      Get.defaultDialog(
          title: "!",
          titleStyle: TextStyle(fontWeight: FontWeight.bold),
          onConfirm: () {
            Get.back();
          },
          confirmTextColor: Colors.white,
          content: Text("Age must be between 1-120"));
    } else if (height.value <= 40 || height.value > 265) {
      Get.defaultDialog(
          
          title: "!",
          titleStyle: TextStyle(fontWeight: FontWeight.bold),
          onConfirm: () {
            Get.back();
          },
          confirmTextColor: Colors.white,
          content: Text("Height must be between 41-265"));
    } else if (weight.value <= 3 || weight.value > 365) {
      Get.defaultDialog(
          title: "!",
          titleStyle: TextStyle(fontWeight: FontWeight.bold),
          onConfirm: () {
            Get.back();
          },
          confirmTextColor: Colors.white,
          content: Text("Weight must be between 4-365"));
    } else {
      bmiCalculator();
      Get.toNamed(Routes.DETAIL, parameters: {
        "bmi": "${bmi.value.toString().substring(0, 4)}",
        "bmiStatus": "${bmiStatus}",
        "responseColor": "${responseColor}"
      });
    }
  }
}