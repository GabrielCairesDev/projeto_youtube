import 'package:flutter/material.dart';

class RegisterController extends ChangeNotifier {
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final confirmPassController = TextEditingController();

  bool isLoading = false;

  Future<void> onTapRegister(BuildContext context) async {
    isLoading = true;
    notifyListeners();

    await Future.delayed(Duration(seconds: 2));

    debugPrint('---> Clicou no botão registrar');
    debugPrint('---> email: ${emailController.text}');
    debugPrint('---> senha: ${passController.text}');
    debugPrint('---> senha 2: ${confirmPassController.text}');
    Navigator.pop(context);

    isLoading = false;
    notifyListeners();
  }
}
