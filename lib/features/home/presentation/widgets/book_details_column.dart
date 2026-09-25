import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsColumn extends StatelessWidget {
  const BookDetailsColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          "The Midnight Library",
          style: Styles.titleStyle,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Text("Matt Haig", style: Styles.captionStyle),

        Row(
          children: [
            const Icon(Icons.star, color: kRatingColor, size: 12),
            const SizedBox(width: 3),
            const Text(
              '4.8',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: kRatingColor,
              ),
            ),
            const SizedBox(width: 5),
            Text('(12.4k)', style: Styles.captionStyle),
          ],
        ),
      ],
    );
  }
}
