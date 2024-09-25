import 'package:flutter/material.dart';

import '../constants/constants.dart';

class WorkWidget extends StatelessWidget {
  const WorkWidget({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colora.primaryColor,
          borderRadius: BorderRadius.circular(Dimensions.fifteen)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            text,
            style: ATextStyle.lightBold9,
          ),
          Dimensions.fifteen.height
        ],
      ),
    );
  }
}
