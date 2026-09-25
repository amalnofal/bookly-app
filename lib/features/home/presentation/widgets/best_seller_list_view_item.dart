import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/widgets/custom_badge.dart';
import 'package:bookly_app/features/home/presentation/widgets/book_details_column.dart';
import 'package:bookly_app/features/home/presentation/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14),
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: kSurfaceColor,
      ),
      child: SizedBox(
        height: 85,
        child: Row(
          children: [
            CustomBookImage(borderRadius: 8),
            SizedBox(width: 12),
            Expanded(child: BookDetailsColumn()),

            CustomBadge(text: "€19.99"),
          ],
        ),
      ),
    );
  }
}
