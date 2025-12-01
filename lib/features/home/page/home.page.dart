import 'package:flutter/material.dart';
import 'package:projeto_youtube/features/home/controller/home.controller.dart';
import 'package:projeto_youtube/shared/widgets/button.widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = HomeController();
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
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
