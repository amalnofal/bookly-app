import 'package:flutter/material.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';

class BookDetailsRating extends StatelessWidget {
  const BookDetailsRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: kSurfaceColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.star, color: kRatingColor, size: 14),
          const SizedBox(width: 5),
          const Text('4.8', style: Styles.titleStyle),

          const SizedBox(width: 6),
          Text(
            '· 12,400 reviews',
            style: Styles.captionStyle.copyWith(fontSize: 11),
          ),
        ],
      ),
    );
  }
}
