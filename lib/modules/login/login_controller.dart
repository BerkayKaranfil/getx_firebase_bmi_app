import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../shared/services/auth_service.dart';

class LoginController extends GetxController{
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  AuthService auth = AuthService();
  
}