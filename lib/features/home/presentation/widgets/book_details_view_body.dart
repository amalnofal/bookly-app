import 'package:bookly_app/features/home/presentation/widgets/book_details_section.dart';
import 'package:bookly_app/features/home/presentation/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                BookDetailsSection(),
                Expanded(child: SizedBox(height: 20)),
                SimilarBooksSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
