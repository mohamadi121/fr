import 'package:flutter/material.dart';

import '../constants/constants.dart';

SizedBox radioButton({
  required String title,
  Function(String?)? onChanged,
  required String groupValue,
  required String value,
}) {
  return SizedBox(
    height: 40,
    width: 140,
    child: RadioListTile(
        contentPadding: EdgeInsets.zero,
        dense: false,
        visualDensity: VisualDensity.compact,
        fillColor: MaterialStateProperty.all(Colors.white),
        title: Text(
          title,
          style: ATextStyle.appTitle,
        ),
        value: value,
        groupValue: groupValue,
        onChanged: onChanged),
  );
}
