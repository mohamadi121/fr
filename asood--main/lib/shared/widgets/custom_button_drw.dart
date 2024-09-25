import 'package:flutter/material.dart';

import '../constants/constants.dart';

class CustomButtonDrw extends StatelessWidget {
  const CustomButtonDrw({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colora.primaryColor),
      onPressed: () {},
      child: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
