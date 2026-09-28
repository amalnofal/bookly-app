import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/features/home/presentation/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      separatorBuilder: (context, index) => const SizedBox(height: 10),
      itemCount: 10,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            GoRouter.of(context).push(AppRouter.kBookDetailsView);
          },
          child: const BestSellerListViewItem(),
        );
      },
    );
  }
}
