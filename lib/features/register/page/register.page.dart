import 'package:flutter/material.dart';
import 'package:projeto_youtube/features/register/controller/register.controller.dart';
import 'package:projeto_youtube/shared/utils/validator.utils.dart';
import 'package:projeto_youtube/shared/widgets/button.widget.dart';
import 'package:projeto_youtube/shared/widgets/scaffold.widget.dart';
import 'package:projeto_youtube/shared/widgets/text_form_field.widget.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final _controller = RegisterController();

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: _controller,
      builder: (context, _) {
        return ScaffoldWidget(
          title: 'Pagina de Registro',
          isLoading: _controller.isLoading,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 16,
            children: [
              TextFormFieldWidget(
                controller: _controller.emailController,
                labelText: 'E-mail',
                hintText: 'Digite o seu e-mail',
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  return ValidatorUtils.email(value);
                },
              ),
              TextFormFieldWidget(
                controller: _controller.passController,
                labelText: 'Senha',
                hintText: 'Digite sua senha',
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  return ValidatorUtils.pass(value);
                },
              ),
              TextFormFieldWidget(
                controller: _controller.confirmPassController,
                labelText: 'Confirmar Senha',
                hintText: 'Confirme a sua senha',
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  return ValidatorUtils.confirmPass(
                    value,
                    _controller.passController.text,
                  );
                },
              ),
              ButtonWidget(
                text: 'Registrar',
                onTap: () => _controller.onTapRegister(context),
              ),
            ],
          ),
        );
      },
    );
  }
}
