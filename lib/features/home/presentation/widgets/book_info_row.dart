import 'package:bookly_app/features/home/presentation/widgets/info_box_item.dart';
import 'package:flutter/material.dart';

class BookInfoRow extends StatelessWidget {
  const BookInfoRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InfoBoxItem(title: 'Pages', value: '304'),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: InfoBoxItem(title: 'Language', value: 'EN'),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: InfoBoxItem(title: 'Published', value: '2022'),
        ),
      ],
    );
  }
}
