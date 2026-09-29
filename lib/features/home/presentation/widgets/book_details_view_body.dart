import 'package:bookly_app/features/home/presentation/widgets/book_details_section.dart';
import 'package:bookly_app/features/home/presentation/widgets/custom_book_details_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(children: [BookDetailsSection()]),
            ),
          ),
        ],
      ),
    );
  }
}
