import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomSectionTitle extends StatelessWidget {
  final String title;
  const CustomSectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Text(title, style: Styles.headingStyle),
    );
  }
}
