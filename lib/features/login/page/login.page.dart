import 'package:flutter/material.dart';
import 'package:projeto_youtube/features/login/controller/login.controller.dart';
import 'package:projeto_youtube/shared/widgets/button.widget.dart';
import 'package:projeto_youtube/shared/widgets/scaffold.widget.dart';
import 'package:projeto_youtube/shared/widgets/text_form_field.widget.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final _controller = LoginController();

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: _controller,
      builder: (context, _) {
        return ScaffoldWidget(
          title: 'Página de Login',
          isLoading: _controller.isLoading,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 16,
            children: [
              TextFormFieldWidget(
                controller: _controller.emailController,
                labelText: 'E-mail',
                hintText: 'Digite o seu e-mail',
              ),
              TextFormFieldWidget(
                controller: _controller.passController,
                labelText: 'Senha',
                hintText: 'Digite a sua senha',
                obscureText: true,
              ),
              ButtonWidget(
                text: 'Login',
                onTap: () {
                  _controller.onTapButtonLogin(context);
                },
              ),
              ButtonWidget(
                text: 'Registrar',
                onTap: () {
                  _controller.onTapButtonRegister(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
