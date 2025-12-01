import 'package:flutter/material.dart';
import 'package:projeto_youtube/shared/widgets/loading.widget.dart';

class ScaffoldWidget extends StatelessWidget {
  const ScaffoldWidget({
    super.key,
    this.title = '',
    required this.body,
    this.isLoading = false,
  });

  final String title;
  final Widget body;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: body,
          ),
          isLoading ? LoadingWidget() : Container(),
        ],
      ),
    );
  }
}
