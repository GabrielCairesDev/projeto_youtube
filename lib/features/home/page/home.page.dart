import 'package:flutter/material.dart';
import 'package:projeto_youtube/core/routes/routes.config.dart';
import 'package:projeto_youtube/features/home/controller/home.controller.dart';
import 'package:projeto_youtube/shared/widgets/button.widget.dart';
import 'package:projeto_youtube/shared/widgets/scaffold.widget.dart';
import 'package:projeto_youtube/shared/widgets/snack_bar.widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final HomeController controller;

  @override
  void initState() {
    super.initState();
    controller = HomeController();
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
          title: 'Home',
          isLoading: controller.isLoading,
          body: Center(
            child: ButtonWidget(
              text: 'Logout',
              onTap: () async {
                final result = await controller.onTapButtonLogout();

                SnackBarWidget.show(context, result: result);

                if (result.success) {
                  Navigator.pushReplacementNamed(context, RoutesConfig.login);
                }
              },
            ),
          ),
        );
      },
    );
  }
}
