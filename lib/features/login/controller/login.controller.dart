import 'package:flutter/material.dart';
import 'package:projeto_youtube/core/routes/routes.config.dart';

class LoginController {
  final emailController = TextEditingController(text: 'gabriel@exemplo.com');
  final passController = TextEditingController(text: '123456');

  void onTapButtonLogin(BuildContext context) {
    debugPrint('clicou no botao de login');
    debugPrint('E-mail: ${emailController.text}');
    debugPrint('Senha: ${passController.text}');

    if (emailController.text == 'gabriel@exemplo.com' ||
        passController.text == '123456') {
      debugPrint('E-mail e senha corretos');
      Navigator.pushReplacementNamed(context, RoutesConfig.home);
    } else {
      debugPrint('E-mail e senha errados');
    }
  }

  void onTapButtonRegister(BuildContext context) {
    debugPrint('clicou no botao de registrar');
    Navigator.pushNamed(context, RoutesConfig.register);
  }
}
