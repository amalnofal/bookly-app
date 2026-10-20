import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/widgets/info_box_item.dart';
import 'package:flutter/material.dart';

class BookInfoRow extends StatelessWidget {
  const BookInfoRow({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InfoBoxItem(
            title: 'Pages',
            value: bookModel.volumeInfo.pageCount?.toString() ?? 'N/A',
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: InfoBoxItem(
            title: 'Language',
            value: bookModel.volumeInfo.language?.toUpperCase() ?? 'N/A',
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: InfoBoxItem(
            title: 'Published',
            value: bookModel.volumeInfo.publishedDate ?? 'N/A',
          ),
        ),
      ],
    );
  }
}
