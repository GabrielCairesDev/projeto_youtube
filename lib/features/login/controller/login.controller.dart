import 'package:flutter/material.dart';
import 'package:projeto_youtube/core/auth/auth.repository.dart';
import 'package:projeto_youtube/core/routes/routes.config.dart';
import 'package:projeto_youtube/shared/models/result.model.dart';

class LoginController extends ChangeNotifier {
  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController(
    text: 'gabriel.araujo.caires@gmail.com',
  );
  final passController = TextEditingController(text: 'Teste@123');

  bool isLoading = false;

  Future<ResultModel> onTapButtonLogin() async {
    if (!formKey.currentState!.validate()) {
      return ResultModel(false, 'Por favor, corrija os erros no formulário.');
    }
    isLoading = true;
    notifyListeners();

    late ResultModel result;

    try {
      await AuthRepository.instance.login(
        email: emailController.text.trim(),
        password: passController.text,
      );
      result = ResultModel(true, 'Login realizado com sucesso!');
    } catch (e) {
      result = ResultModel(false, 'Erro ao fazer login: ${e.toString()}');
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
