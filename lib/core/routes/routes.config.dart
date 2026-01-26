import 'package:flutter/material.dart';
import 'package:projeto_youtube/features/home/page/home.page.dart';
import 'package:projeto_youtube/features/images/page/image.page.dart';
import 'package:projeto_youtube/features/login/page/login.page.dart';
import 'package:projeto_youtube/features/register/page/register.page.dart';
import 'package:projeto_youtube/features/splash/page/splash.page.dart';

class RoutesConfig {
  static const String splash = '/splash';
  static const String login = '/login';
  static const String register = '/register';
  static const String home = '/home';
  static const String images = '/images';

  static Map<String, WidgetBuilder> routes() {
    return {
      splash: (context) => const SplashPage(),
      login: (context) => LoginPage(),
      register: (context) => RegisterPage(),
      home: (context) => HomePage(),
      images: (context) => const ImagePage(),
    };
  }
}
