import 'package:flutter/material.dart';

import '../constants/constants.dart';

class TimeLineTextFiled extends StatelessWidget {
  const TimeLineTextFiled({
    required this.controller,
    this.keyboardType = TextInputType.name,
    required this.text,
    this.maxLine = 1,
    this.color = Colora.scaffold,
    super.key,
  });

  final TextEditingController controller;
  final TextInputType keyboardType;
  final String text;
  final int maxLine;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return TextField(
      textDirection: TextDirection.rtl,
      controller: controller,
      keyboardType: keyboardType,
      style: ATextStyle.selectedBtn,
      maxLines: maxLine,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(
            right: Dimensions.ten, left: Dimensions.ten, top: Dimensions.seven),
        filled: true,
        fillColor: color,
        hintText: text,
        hintTextDirection: TextDirection.rtl,
        hintStyle:
            ATextStyle.selectedBtn.copyWith(fontWeight: FontWeight.normal),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dimensions.twenty),
        ),
      ),
    );
  }
}
