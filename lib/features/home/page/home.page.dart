import 'package:flutter/material.dart';
import 'package:projeto_youtube/features/home/controller/home.controller.dart';
import 'package:projeto_youtube/shared/widgets/button.widget.dart';
import 'package:projeto_youtube/shared/widgets/scaffold.widget.dart';

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
    return ScaffoldWidget(
      title: 'Home',
      body: Center(
        child: ButtonWidget(
          text: 'Logout',
          onTap: () {
            controller.onTapButtonLogout(context);
          },
        ),
      ),
    );
  }
}
