import 'package:bookly_app/core/widgets/custom_section_title.dart';
import 'package:bookly_app/features/home/presentation/widgets/best_seller_list_view.dart';
import 'package:bookly_app/features/home/presentation/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),

                CustomSectionTitle(title: 'Featured'),
                FeaturedBooksListView(),
                SizedBox(height: 16),

                CustomSectionTitle(title: 'Best Sellers'),
              ],
            ),
          ),
          BestSellerListView(),
        ],
      ),
    );
  }
}
