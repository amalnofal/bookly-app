import 'package:bookly_app/features/home/presentation/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      separatorBuilder: (context, index) => const SizedBox(height: 10),
      itemCount: 10,
      itemBuilder: (context, index) => const BestSellerListViewItem(),
    );
  }
}
