import 'package:flutter/material.dart';
import 'package:projeto_youtube/features/home/page/home.page.dart';
import 'package:projeto_youtube/features/login/page/login.page.dart';
import 'package:projeto_youtube/features/register/page/register.page.dart';

class RoutesConfig {
  static const String login = '/login';
  static const String register = '/register';
  static const String home = '/home';

  static Map<String, WidgetBuilder> routes() {
    return {
      login: (context) => const LoginPage(),
      register: (context) => const RegisterPage(),
      home: (context) => const HomePage(),
    };
  }
}
