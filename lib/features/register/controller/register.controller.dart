import 'package:flutter/material.dart';
import 'package:projeto_youtube/core/auth/auth.repository.dart';
import 'package:projeto_youtube/shared/models/result.model.dart';

class RegisterController extends ChangeNotifier {
  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passController = TextEditingController();
  final confirmPassController = TextEditingController();

  bool isLoading = false;

  Future<ResultModel> onTapRegister() async {
    if (!formKey.currentState!.validate()) {
      return ResultModel(false, 'Por favor, corrija os erros no formulário.');
    }
    isLoading = true;
    notifyListeners();

    late ResultModel result;

    try {
      await AuthRepository.instance.register(
        email: emailController.text.trim(),
        password: passController.text,
      );
      result = ResultModel(true, 'Registro realizado com sucesso!');
    } catch (e) {
      result = ResultModel(false, 'Erro ao registrar: ${e.toString()}');
    }

    isLoading = false;
    notifyListeners();

    return result;
  }
}
