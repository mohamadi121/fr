import 'package:flutter/material.dart';

import '../constants/constants.dart';

class HeaderApp extends StatelessWidget {
  const HeaderApp({
    super.key,
    required this.title,
    required this.subTitle,
    required this.leftWidget,
    required this.rightWidget,
  });

  final String title;
  final String subTitle;
  final Widget leftWidget;
  final Widget rightWidget;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(children: [
          Container(
            height: Dimensions.height * .08,
            width: double.infinity,
            foregroundDecoration: BoxDecoration(
              color: Colora.appBarForgroundColor,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(Dimensions.twenty),
                  bottomRight: Radius.circular(Dimensions.twenty)),
            ),
            decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      color: Colora.shadow,
                      offset: Offset(0, 5),
                      blurRadius: 6,
                      blurStyle: BlurStyle.normal)
                ],
                color: Colora.primaryColor,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(Dimensions.twenty),
                    bottomRight: Radius.circular(Dimensions.twenty)),
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: Assets.images.appBarPosterPng.provider(),
                )),
          ),
          Row(
            children: [
              Dimensions.fifteen.width,
              rightWidget,
              const Expanded(child: SizedBox()),
              Column(
                children: [
                  Dimensions.fifteen.height,
                  Text(
                    title,
                    style: ATextStyle.appTitle,
                  ),
                  Text(
                    subTitle,
                    style: const TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
              const Expanded(child: SizedBox()),
              leftWidget,
              Dimensions.fifteen.width
            ],
          ),
        ]),
      ],
    );
  }
}
