import 'package:bookly_app/core/widgets/custom_circle_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Row(
        children: [
          CustomCircleButton(
            icon: Icons.arrow_back,
            onPressed: () => GoRouter.of(context).pop(),
          ),
          const Spacer(),
          const Text(
            "Book Details",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          const Spacer(),
          CustomCircleButton(icon: Icons.favorite_outline, onPressed: () {}),
        ],
      ),
    );
  }
}
