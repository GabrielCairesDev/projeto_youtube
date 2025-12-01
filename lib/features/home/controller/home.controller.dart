import 'package:flutter/material.dart';
import 'package:projeto_youtube/core/routes/routes.config.dart';

class HomeController {
  void onTapButtonLogout(BuildContext context) {
    Navigator.pushReplacementNamed(context, RoutesConfig.login);
  }
}
