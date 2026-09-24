import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomCircleButton extends StatelessWidget {
  final String icon;
  final VoidCallback onPressed;
  final double iconSize;
  final Color? iconColor;

  const CustomCircleButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.iconSize = 20,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: kSurfaceColor,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: SvgPicture.asset(
          icon,
          height: iconSize,
          width: iconSize,
          colorFilter: ColorFilter.mode(
            iconColor ?? kIconColor,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
