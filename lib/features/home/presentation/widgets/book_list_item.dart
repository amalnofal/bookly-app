import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/widgets/custom_badge.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/widgets/book_summary_column.dart';
import 'package:bookly_app/features/home/presentation/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookListItem extends StatelessWidget {
  const BookListItem({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: kSurfaceColor,
      ),
      child: SizedBox(
        height: 95,
        child: Row(
          children: [
            CustomBookImage(
              imageUrl: bookModel.volumeInfo.imageLinks.thumbnail,
              borderRadius: 8,
            ),
            const SizedBox(width: 12),
            Expanded(child: BookSummaryColumn(bookModel: bookModel)),
            const CustomBadge(text: "Free"),
          ],
        ),
      ),
    );
  }
}
