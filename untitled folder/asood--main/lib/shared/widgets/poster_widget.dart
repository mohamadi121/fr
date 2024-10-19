import 'package:flutter/material.dart';

import '../constants/constants.dart';

class Poster extends StatelessWidget {
  const Poster({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.height / 4,
      foregroundDecoration: BoxDecoration(
        color: Colora.posterForgroundColor,
        borderRadius: BorderRadius.circular(Dimensions.fourty),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.fourty),
        image: DecorationImage(
          image: Assets.images.posterp.provider(),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
