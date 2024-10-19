import 'package:flutter/material.dart';

import '../constants/constants.dart';

class ServiceWidget extends StatelessWidget {
  const ServiceWidget({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 110,
          decoration: BoxDecoration(
              color: Colora.primaryColor,
              borderRadius: BorderRadius.circular(Dimensions.fifteen)),
        ),
        Text(
          text,
          style: ATextStyle.lightBlueBold15,
        ),
      ],
    );
  }
}
