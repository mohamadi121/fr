import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../constants/constants.dart';

class TemplateWidget extends StatelessWidget {
  TemplateWidget({
    super.key,
    required this.titleWidget,
  });

  final Widget titleWidget;
  final PageController pageController =
      PageController(initialPage: 0, viewportFraction: 1, keepPage: true);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Dimensions.ten),
      decoration: BoxDecoration(
          color: Colora.lightBlue,
          borderRadius: BorderRadius.circular(Dimensions.fifteen)),
      child: Column(children: [
        titleWidget,
        titleWidget == const SizedBox.shrink()
            ? Dimensions.seven.height
            : const SizedBox.shrink(),
        SizedBox(
            height: Dimensions.height * .33,
            child: PageView.builder(
              controller: pageController,
              itemCount: 10,
              itemBuilder: (_, index) {
                return Container(
                  margin: const EdgeInsets.all(Dimensions.fifteen),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(Assets.images.aa.path),
                      Image.asset(Assets.images.ab.path),
                    ],
                  ),
                );
              },
            )),
        SmoothPageIndicator(
          controller: pageController,
          count: 4,
          axisDirection: Axis.horizontal,
          effect: const ExpandingDotsEffect(
              spacing: 8.0,
              radius: Dimensions.fifteen,
              dotWidth: Dimensions.twenty,
              dotHeight: Dimensions.twenty,
              paintStyle: PaintingStyle.fill,
              strokeWidth: 1.5,
              dotColor: Colora.scaffold,
              activeDotColor: Colora.scaffold),
        ),
      ]),
    );
  }
}
