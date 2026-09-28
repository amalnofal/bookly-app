import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class InfoBoxItem extends StatelessWidget {
  final String title;
  final String value;

  const InfoBoxItem({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      decoration: BoxDecoration(
        color: kSurfaceColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(value, style: Styles.titleStyle.copyWith(fontSize: 16)),
          const SizedBox(height: 4),
          Text(title, style: Styles.captionStyle),
        ],
      ),
    );
  }
}
