import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  final double borderRadius;
  final double aspectRatio;

  const CustomBookImage({
    super.key,
    this.borderRadius = 16,
    this.aspectRatio = 2.6 / 4,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          image: const DecorationImage(
            image: AssetImage("assets/images/test.png"),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
