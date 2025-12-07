import 'package:flutter/material.dart';
import 'package:projeto_youtube/features/login/controller/login.controller.dart';
import 'package:projeto_youtube/shared/widgets/button.widget.dart';
import 'package:projeto_youtube/shared/widgets/scaffold.widget.dart';
import 'package:projeto_youtube/shared/widgets/text_form_field.widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final LoginController controller;

  @override
  void initState() {
    super.initState();
    controller = LoginController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: controller,
      builder: (context, _) {
        return ScaffoldWidget(
          title: 'Página de Login',
          isLoading: controller.isLoading,
          body: Column(
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
                obscureText: true,
              ),
              ButtonWidget(
                text: 'Login',
                onTap: () {
                  controller.onTapButtonLogin(context);
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
        );
      },
    );
  }
}
