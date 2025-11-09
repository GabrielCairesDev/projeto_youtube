import 'package:flutter/material.dart';

class LoginController {
  final emailController = TextEditingController();
  final passController = TextEditingController();

  void onTapButton() {
    debugPrint('clicou no botao de login');
    debugPrint('E-mail: ${emailController.text}');
    debugPrint('Senha: ${passController.text}');

    if(emailController.text == 'gabriel@exemplo.com' || passController.text == '123456'){
      debugPrint('E-mail e senha corretos');
    } else {
       debugPrint('E-mail e senha errados');
    }
  }
}
