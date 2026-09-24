import 'package:bookly_app/features/home/presentation/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemCount: 10,
        separatorBuilder: (context, index) {
          return const SizedBox(width: 16);
        },
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const CustomBookImage();
        },
      ),
    );
  }
}
