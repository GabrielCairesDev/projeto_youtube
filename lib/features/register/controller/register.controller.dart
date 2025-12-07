import 'package:flutter/material.dart';
import 'package:projeto_youtube/shared/models/result.model.dart';

class RegisterController extends ChangeNotifier {
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final confirmPassController = TextEditingController();

  bool isLoading = false;

  Future<ResultModel> onTapRegister() async {
    isLoading = true;
    notifyListeners();

    await Future.delayed(Duration(seconds: 2));

    late ResultModel result;

    debugPrint('---> Clicou no botão registrar');
    debugPrint('---> email: ${emailController.text}');
    debugPrint('---> senha: ${passController.text}');
    debugPrint('---> senha 2: ${confirmPassController.text}');

    if (emailController.text.isEmpty ||
        passController.text.isEmpty ||
        confirmPassController.text.isEmpty) {
      result = ResultModel(false, 'Por favor, preencha todos os campos.');
    } else if (passController.text != confirmPassController.text) {
      result = ResultModel(false, 'As senhas não coincidem.');
    } else {
      result = ResultModel(true, 'Registro realizado com sucesso!');
    }

    isLoading = false;
    notifyListeners();

    return result;
  }
}
