import 'package:flutter/material.dart';

import '../constants/constants.dart';

class TagButton extends StatelessWidget {
  const TagButton({
    super.key,
    required this.onTap,
    required this.backgroundColor,
    required this.text,
    required this.textStyle,
  });

  final Function() onTap;
  final Color backgroundColor;
  final String text;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: Dimensions.width / 3.5,
        height: Dimensions.height * .038,
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(Dimensions.twenty),
            border: Border.all(color: Colora.borderTag)),
        child: Center(
            child: Text(
          text,
          style: textStyle,
        )),
      ),
    );
  }
}
