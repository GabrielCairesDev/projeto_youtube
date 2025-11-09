import 'package:flutter/material.dart';

class RegisterController {
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final confirmPassController = TextEditingController();

  void onTapRegister(){
    debugPrint('---> Clicou no botão registrar');
    debugPrint('---> email: ${emailController.text}');
    debugPrint('---> senha: ${passController.text}');
    debugPrint('---> senha 2: ${confirmPassController.text}');
  }
}
