import 'package:flutter/material.dart';
import 'package:projeto_youtube/features/home/controller/home.controller.dart';
import 'package:projeto_youtube/shared/widgets/button.widget.dart';
import 'package:projeto_youtube/shared/widgets/scaffold.widget.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final _controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      title: 'Home',
      body: Center(
        child: ButtonWidget(
          text: 'Logout',
          onTap: () {
            _controller.onTapButtonLogout(context);
          },
        ),
      ),
    );
  }
}
