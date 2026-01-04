import 'package:flutter/widgets.dart';
import 'package:projeto_youtube/core/auth/auth.repository.dart';
import 'package:projeto_youtube/core/routes/routes.config.dart';
import 'package:projeto_youtube/shared/widgets/scaffold.widget.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 1), () {
        if (AuthRepository.isAuthenticated) {
          Navigator.pushReplacementNamed(context, RoutesConfig.home);
        } else {
          Navigator.pushReplacementNamed(context, RoutesConfig.login);
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(body: FlutterLogo(size: 100));
  }
}
