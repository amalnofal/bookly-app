import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

class CustomCircleButton extends StatelessWidget {
  final IconData? icon;
  final VoidCallback onPressed;
  final double iconSize;
  final Color? iconColor;

  const CustomCircleButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.iconSize = 22,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: kSurfaceColor,
      shape: const CircleBorder(),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Icon(icon, size: iconSize, color: iconColor ?? kIconColor),
        ),
      ),
    );
  }
}
