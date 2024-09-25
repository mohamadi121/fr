import 'package:flutter/material.dart';
import '../constants/constants.dart';

class RowWidgetTitle extends StatelessWidget {
  const RowWidgetTitle({
    super.key,
    required this.title,
    required this.widget,
  });

  final String title;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: ATextStyle.lightBlue18),
        widget,
      ],
    );
  }
}
