import 'package:cached_network_image/cached_network_image.dart';
import 'package:digi_store/gen/assets.gen.dart';
import 'package:digi_store/widget/digi_loading_widget.dart';
import 'package:flutter/material.dart';

class CachedImage extends StatelessWidget {
  const CachedImage({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      fit: BoxFit.cover,
      placeholder: (context, url) => const Center(child: DigiLoadingWidget()),
      errorWidget: (context, url, error) => Image.asset(
        Assets.png.logo.path,
        fit: BoxFit.contain,
      ),
    );
  }
}
