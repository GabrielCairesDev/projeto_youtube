import 'package:flutter/material.dart';
import 'package:projeto_youtube/shared/widgets/scaffold.widget.dart';

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  @override
  Widget build(BuildContext context) {
    return const ScaffoldWidget(
      title: 'Image Page',
      body: Center(child: Text('This is the Image Page')),
    );
  }
}
