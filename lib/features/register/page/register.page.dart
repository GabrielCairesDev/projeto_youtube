import 'package:flutter/material.dart';
import 'package:projeto_youtube/features/register/controller/register.controller.dart';
import 'package:projeto_youtube/shared/utils/validator.utils.dart';
import 'package:projeto_youtube/shared/widgets/button.widget.dart';
import 'package:projeto_youtube/shared/widgets/scaffold.widget.dart';
import 'package:projeto_youtube/shared/widgets/text_form_field.widget.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late final RegisterController controller;

  @override
  void initState() {
    super.initState();
    controller = RegisterController();
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
          title: 'Pagina de Registro',
          isLoading: controller.isLoading,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 16,
            children: [
              TextFormFieldWidget(
                controller: controller.emailController,
                labelText: 'E-mail',
                hintText: 'Digite o seu e-mail',
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  return ValidatorUtils.email(value);
                },
              ),
              TextFormFieldWidget(
                controller: controller.passController,
                labelText: 'Senha',
                hintText: 'Digite sua senha',
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  return ValidatorUtils.pass(value);
                },
              ),
              TextFormFieldWidget(
                controller: controller.confirmPassController,
                labelText: 'Confirmar Senha',
                hintText: 'Confirme a sua senha',
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  return ValidatorUtils.confirmPass(
                    value,
                    controller.passController.text,
                  );
                },
              ),
              ButtonWidget(
                text: 'Registrar',
                onTap: () => controller.onTapRegister(context),
              ),
            ],
          ),
        );
      },
    );
  }
}
