import 'package:flutter/material.dart';
import 'package:projeto_youtube/features/home/controller/home.controller.dart';
import 'package:projeto_youtube/shared/widgets/button.widget.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final _controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
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
