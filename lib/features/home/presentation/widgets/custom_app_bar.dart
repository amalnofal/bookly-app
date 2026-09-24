import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/widgets/custom_circle_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Row(
        children: [
          SvgPicture.asset(AssetsData.logo, height: 38),
          const SizedBox(width: 8),
          const Text(
            "BOOKLY",
            style: TextStyle(fontSize: 28, fontFamily: 'DM Serif Display'),
          ),
          const Spacer(),
          CustomCircleButton(icon: AssetsData.search, onPressed: () {}),
        ],
      ),
    );
  }
}
