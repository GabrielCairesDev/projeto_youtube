import 'package:flutter/material.dart';
import 'package:projeto_youtube/core/routes/routes.config.dart';
import 'package:projeto_youtube/shared/models/result.model.dart';

class LoginController extends ChangeNotifier {
  final emailController = TextEditingController(text: 'gabriel@exemplo.com');
  final passController = TextEditingController(text: '123456');

  bool isLoading = false;

  Future<ResultModel> onTapButtonLogin() async {
    isLoading = true;
    notifyListeners();

    await Future.delayed(const Duration(seconds: 2));

    debugPrint('clicou no botao de login');
    debugPrint('E-mail: ${emailController.text}');
    debugPrint('Senha: ${passController.text}');

    late ResultModel result;

    if (emailController.text == 'gabriel@exemplo.com' ||
        passController.text == '123456') {
      result = ResultModel(true, 'Login realizado com sucesso');
      debugPrint('E-mail e senha corretos');
    } else {
      debugPrint('E-mail e senha errados');
      result = ResultModel(false, 'E-mail ou senha incorretos');
    }

    isLoading = false;
    notifyListeners();

    return result;
  }

  void onTapButtonRegister(BuildContext context) {
    debugPrint('clicou no botao de registrar');
    Navigator.pushNamed(context, RoutesConfig.register);
  }
}
