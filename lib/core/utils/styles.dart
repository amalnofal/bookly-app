import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

abstract class Styles {
  static const headingStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );

  static const titleStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
  );

  static const captionStyle = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: kSubTitleColor,
  );

  static const badgeStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: kAccentColor,
  );
}
