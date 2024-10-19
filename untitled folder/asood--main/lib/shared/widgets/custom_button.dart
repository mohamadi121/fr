import 'package:flutter/material.dart';

import '../constants/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.onPress,
      this.height,
      this.width,
      this.color,
      this.btnWidget,
      this.textColor,
      this.text});

  final void Function() onPress;
  final double? height;
  final double? width;
  final Color? color;
  final Widget? btnWidget;
  final String? text;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: height ?? 35,
        width: width ?? Dimensions.width,
        decoration: BoxDecoration(
            color: color ?? Colora.primaryColor,
            borderRadius: BorderRadius.circular(buttonRadius)),
        child: Center(
          child: btnWidget ??
              Text(
                text ?? "",
                style: ATextStyle.unSelectedBtn.copyWith(
                    fontStyle: FontStyle.normal,
                    color: textColor ?? Colors.white),
              ),
        ),
      ),
    );
  }
}
