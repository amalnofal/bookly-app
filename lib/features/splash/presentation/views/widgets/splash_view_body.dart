import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              gradient: RadialGradient(
                center: Alignment.center,
                radius: 0.8,
                colors: [
                  kAccentColor.withValues(alpha: 0.28),
                  Colors.transparent,
                ],
                stops: const [0.0, 0.7],
              ),
            ),
          ),

          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(AssetsData.logo, height: 59, width: 72),
              SizedBox(height: 16),
              Text(
                "bookly".toUpperCase(),
                style: TextStyle(fontSize: 36, fontFamily: 'DM Serif Display'),
              ),
              SizedBox(height: 8),
              Text(
                "your reading companion".toUpperCase(),
                style: TextStyle(
                  fontSize: 16,
                  color: kSubTitleColor,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
