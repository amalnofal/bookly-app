import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/custom_badge.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:bookly_app/features/home/presentation/widgets/book_details_rating.dart';
import 'package:bookly_app/features/home/presentation/widgets/book_info_row.dart';
import 'package:bookly_app/features/home/presentation/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.25),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: kAccentColor.withValues(alpha: 0.35),
                    blurRadius: 50,
                    spreadRadius: 0,
                    offset: const Offset(0, 0),
                  ),
                ],
              ),
              child: const CustomBookImage(),
            ),
          ),
          const SizedBox(height: 16),

          const CustomBadge(text: "Fiction"),
          const SizedBox(height: 8),

          const Text(
            "The Midnight Library",
            style: TextStyle(fontSize: 22, fontFamily: kSecondaryFont),
          ),
          const SizedBox(height: 8),

          Text("Matt Haig", style: Styles.captionStyle),

          const SizedBox(height: 8),
          const BookDetailsRating(),

          const SizedBox(height: 16),
          const BookInfoRow(),

          const SizedBox(height: 16),
          CustomButton(onPressed: () {}, text: "Read for free"),
        ],
      ),
    );
  }
}
