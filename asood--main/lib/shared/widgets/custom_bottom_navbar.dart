// import 'package:asood/screens/store_screen/store_screen.dart';
// ignore_for_file: unused_import

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../screens/store_setting_screens/color_setting_screen/color_setting_screen.dart';
import '../../modules/market/screens/edit_store.dart';
import '../screens/store_setting_screens/font-txtColor_setting_screen/font_color_setting_screen.dart';
import '../screens/store_setting_screens/takhfif_setting_screen/takhfif_screen.dart';
import '../screens/store_setting_screens/themes_screen/themes_screen.dart';
import '../constants/constants.dart';
import '../utils/app_router.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showBottomSheet(context);
      },
      child: Container(
          height: 40.0,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20)
              ),
              color: Colora.primaryColor),
          child: Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: const EdgeInsets.only(top: 11),
              width: 25,
              height: 3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1),
                  color: Colora.scaffold),
            ),
          )),
    );
  }
}

class HalfCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colora.primaryColor
      ..style = PaintingStyle.fill;

    // double radius = size.height;

    canvas.drawCircle(Offset(size.width / 2, 6 * size.height), 500, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

void showBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        width: Dimensions.width,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(27),
          color: Colora.primaryColor,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.calendar_today_rounded,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.messenger_outline,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add_shopping_cart,
                        color: Colors.white,
                      )),
                ],
              ),
              SizedBox(width: Dimensions.width * .85, child: const Divider()),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      onPressed: () {
                        context.router.push(const TakhfifRoute());
                        /*  Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const TakhfifScreen(),
                          ),
                        ); */
                      },
                      icon: const Icon(
                        Icons.settings,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.credit_card,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () {
                        context.router.push(const FontColorSettingRoute());
                        /*    Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const FontColorSettingScreen(),
                          ),
                        ); */
                      },
                      icon: const Icon(
                        Icons.font_download,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () {
                        context.router.push(const ColorSettingRoute());
                        /*   Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ColorSettingScreen(),
                          ),
                        ); */
                      },
                      icon: const Icon(
                        Icons.color_lens_outlined,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () {
                        context.router.push(const MultiViewSliderRoute());
                        /*   Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MultiViewSliderScreen(),
                          ),
                        ); */
                      },
                      icon: const Icon(
                        Icons.window_outlined,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () {
                        context.router.push(const EditStoreInfoRoute());
                        /*      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const EditStoreInfoScreen(),
                          ),
                        ); */
                      },
                      icon: const Icon(
                        Icons.edit_square,
                        color: Colors.white,
                      )),
                ],
              )
            ],
          ),
        ),
      );
    },
  );
}
