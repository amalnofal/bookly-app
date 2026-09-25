import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomSectionTitle extends StatelessWidget {
  final String title;
  const CustomSectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 24, top: 12, bottom: 12),
      child: Text(title, style: Styles.sectionTitle),
    );
  }
}
