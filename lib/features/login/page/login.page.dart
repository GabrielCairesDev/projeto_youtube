import 'package:flutter/material.dart';
import 'package:projeto_youtube/features/login/controller/login.controller.dart';
import 'package:projeto_youtube/shared/widgets/button.widget.dart';
import 'package:projeto_youtube/shared/widgets/text_form_field.widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = LoginController();

    return Scaffold(
      appBar: AppBar(title: Text('Página de Login')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 16,
          children: [
            TextFormFieldWidget(
              controller: controller.emailController,
              labelText: 'E-mail',
              hintText: 'Digite o seu e-mail',
            ),
            TextFormFieldWidget(
              controller: controller.passController,
              labelText: 'Senha',
              hintText: 'Digite a sua senha',
            ),
            ButtonWidget(
              text: 'Login',
              onTap: () {
                controller.onTapButtonLogin();
              },
            ),
            ButtonWidget(
              text: 'Registrar',
              onTap: () {
                controller.onTapButtonRegister(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
