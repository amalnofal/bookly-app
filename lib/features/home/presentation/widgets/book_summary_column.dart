import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class BookSummaryColumn extends StatelessWidget {
  const BookSummaryColumn({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          bookModel.volumeInfo.title!,
          style: Styles.titleStyle,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 8),
        Text(
          bookModel.volumeInfo.authors?[0] ?? "",
          style: Styles.captionStyle,
          maxLines: 1,
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            const Icon(Icons.star, color: kRatingColor, size: 12),
            const SizedBox(width: 3),
            const Text(
              '0',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: kRatingColor,
              ),
            ),
            const SizedBox(width: 5),
            Text('(0)', style: Styles.captionStyle),
          ],
        ),
      ],
    );
  }
}
