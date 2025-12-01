import 'package:flutter/material.dart';
import 'package:projeto_youtube/core/routes/routes.config.dart';

class LoginController extends ChangeNotifier {
  final emailController = TextEditingController(text: 'gabriel@exemplo.com');
  final passController = TextEditingController(text: '123456');

  bool isLoading = false;

  Future<void> onTapButtonLogin(BuildContext context) async {
    isLoading = true;
    notifyListeners();

    await Future.delayed(const Duration(seconds: 2));

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

    isLoading = false;
    notifyListeners();
  }

  void onTapButtonRegister(BuildContext context) {
    debugPrint('clicou no botao de registrar');
    Navigator.pushNamed(context, RoutesConfig.register);
  }
}
