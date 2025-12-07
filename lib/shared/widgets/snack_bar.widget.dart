import 'package:flutter/material.dart';
import 'package:projeto_youtube/shared/models/result.model.dart';

class SnackBarWidget {
  static void show(BuildContext context, {required ResultModel result}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(result.message),
        backgroundColor: result.success ? Colors.green : Colors.red,
      ),
    );
  }
}
