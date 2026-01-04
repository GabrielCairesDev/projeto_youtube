import 'package:flutter/material.dart';
import 'package:projeto_youtube/core/routes/routes.config.dart';

class AppConfig extends StatelessWidget {
  const AppConfig({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Projeto YouTube',

      initialRoute: RoutesConfig.splash,
      routes: RoutesConfig.routes(),
    );
  }
}
