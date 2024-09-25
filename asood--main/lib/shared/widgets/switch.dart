import 'package:flutter/material.dart';

import '../constants/constants.dart';

class SwitchWidget extends StatelessWidget {
  const SwitchWidget({
    super.key,
    required this.controller,
    this.keyboardType = TextInputType.name,
    required this.text,
    this.maxLine = 1,
    required this.onChanged,
    required this.vlaue,
  });

  final TextEditingController controller;
  final Function(bool vlaue) onChanged;
  final TextInputType keyboardType;
  final String text;
  final int maxLine;
  final bool vlaue;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colora.scaffold,
          borderRadius: BorderRadius.circular(Dimensions.twenty)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: Dimensions.ten),
            child: Text(
              'دارای ساعت کاری',
              style: ATextStyle.unSelectedBtn
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Switch(
            activeColor: Colora.primaryColor,
            inactiveThumbColor: Colora.primaryColor,
            activeTrackColor: Colora.backgroundSwitch,
            inactiveTrackColor: Colora.scaffold,
            value: vlaue,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}
