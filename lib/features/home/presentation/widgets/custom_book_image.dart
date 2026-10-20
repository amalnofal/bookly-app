import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  final String imageUrl;
  final double borderRadius;
  final double aspectRatio;

  const CustomBookImage({
    super.key,
    required this.imageUrl,
    this.borderRadius = 16,
    this.aspectRatio = 2.6 / 4,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: AspectRatio(
        aspectRatio: aspectRatio,
        child: imageUrl.isEmpty
            ? const Icon(Icons.book_outlined)
            : CachedNetworkImage(
                imageUrl: imageUrl,
                fit: BoxFit.fill,
                errorWidget: (context, url, error) =>
                    const Icon(Icons.broken_image_outlined),
              ),
      ),
    );
  }
}
