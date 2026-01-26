import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:projeto_youtube/shared/widgets/image_cache.widget.dart';
import 'package:projeto_youtube/shared/widgets/scaffold.widget.dart';

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      title: 'Image Page',
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.blueGrey,
              child: Image.asset('assets/images/imagem_local.jpg'),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.redAccent,
              child: ImageCacheWidget(
                imageUrl:
                    'https://wallpapers.com/images/hd/clouds-4k-rdw4c7q5mddwp60l.jpg',
              ),
            ),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
