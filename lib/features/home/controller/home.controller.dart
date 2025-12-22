import 'package:flutter/material.dart';
import 'package:projeto_youtube/core/auth/auth.repository.dart';
import 'package:projeto_youtube/shared/models/result.model.dart';

class HomeController extends ChangeNotifier {
  bool isLoading = false;

  Future<ResultModel> onTapButtonLogout() async {
    isLoading = true;
    notifyListeners();

    late ResultModel result;

    try {
      await AuthRepository.instance.logout();
      result = ResultModel(true, 'Logout realizado com sucesso!');
    } catch (e) {
      result = ResultModel(false, 'Erro ao fazer logout: ${e.toString()}');
    }
    return result;
  }
}
