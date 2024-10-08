// import 'package:asood/screens/store_screen/store_screen.dart';
// ignore_for_file: unused_import

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

import '../../modules/vendor/blocs/vendor/vendor_bloc.dart';
import '../screens/store_setting_screens/color_setting_screen/color_setting_screen.dart';
import '../../modules/market/screens/edit_store.dart';
import '../screens/store_setting_screens/font-txtColor_setting_screen/font_color_setting_screen.dart';
import '../screens/store_setting_screens/takhfif_setting_screen/takhfif_screen.dart';
import '../screens/store_setting_screens/themes_screen/themes_screen.dart';
import '../constants/constants.dart';
import '../utils/app_router.dart';
import 'colorpicker.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {

  late VendorBloc bloc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    bloc = BlocProvider.of<VendorBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showBottomSheet(context, bloc);
      },
      child: Container(
        height: Dimensions.height * 0.05,
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
          )
      ),
    );
  }
}

// class HalfCirclePainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint paint = Paint()
//       ..color = Colora.primaryColor
//       ..style = PaintingStyle.fill;
//
//     // double radius = size.height;
//
//     canvas.drawCircle(Offset(size.width / 2, 6 * size.height), 500, paint);
//   }
//
//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return false;
//   }
// }

void showBottomSheet(BuildContext context, bloc) {

  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        width: Dimensions.width,
        height: Dimensions.height * 0.15,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(27),
            topLeft: Radius.circular(27)
          ),
          color: Colora.primaryColor,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //calendar
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.calendar_today_rounded,
                      color: Colors.white,
                    )
                  ),

                  //messenger
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.messenger_outline,
                        color: Colors.white,
                      )),

                  //shopping cart
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add_shopping_cart,
                      color: Colors.white,
                    )
                  ),
                ],
              ),

              SizedBox(width: Dimensions.width * .85, child: const Divider()),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  //Takhfif Route
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

                  //credit card
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.credit_card,
                        color: Colors.white,
                      )),

                  //font
                  IconButton(
                      onPressed: () {

                        Navigator.pop(context);
                        changeFont(context, bloc);

                        // context.router.push(const FontColorSettingRoute());
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

                  //color
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                      changeColor(context, bloc);
                      // Navigator.pop(context);
                      // context.router.push(const ColorSettingRoute());
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
                    )
                  ),

                  //view
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

                  // edit store info
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


void changeFont(BuildContext context, bloc){

  Map fontList = {
    'irs':{
      'name' : 'ایران سنس',
      'font' : 'irs'
    },
    'yekan':{
      'name' : 'یکان',
      'font' : 'yekan'
    },
    'traffic':{
      'name' : 'ترافیک',
      'font' : 'traffic'
    },
    'dastnevis':{
      'name' : 'دست نویس',
      'font' : 'dastnevis'
    },
    'mitra':{
      'name' : 'میترا',
      'font' : 'mitra'
    },
    'nazanin':{
      'name' : 'نازنین',
      'font' : 'nazanin'
    }
  };

  int currentIndex = -1;

  showDialog(
    barrierColor: const Color(0x00000000),
    barrierDismissible: false,
    context: context,
    builder: (context) =>
        AlertDialog(
          // shadowColor: Colors.black,
          contentPadding: const EdgeInsets.all(0),
          backgroundColor: Colors.transparent,
          alignment: Alignment.bottomCenter,
          content: StatefulBuilder(
            builder: (context, setState) {
              return Container(
                height: Dimensions.height * 0.65,
                width: Dimensions.width * 0.73,
                padding: EdgeInsets.symmetric(
                    vertical: Dimensions.height * 0.01,
                    horizontal: Dimensions.width * 0.01
                ),
                decoration: BoxDecoration(
                    color: Colora.lightBlue,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [

                      GridView.builder(
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 2/1
                        ),
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemCount: fontList.length,
                        itemBuilder: (context, index) {
                          var value = fontList.values.toList();
                          return InkWell(
                            onTap: (){
                              bloc.add(SelectFontFamily(fontFamily: value[index]['font']));

                              setState(() {
                                currentIndex = index;
                              });

                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                horizontal: Dimensions.width * 0.01,
                                vertical: Dimensions.height * 0.005
                              ),
                              decoration: BoxDecoration(
                                color: Colora.primaryColor,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: currentIndex == index
                                    ?Colors.white
                                    :Colora.lightBlue,
                                  width: 2
                                )
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                value[index]['name'].toString(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: Dimensions.width * 0.04,
                                    fontFamily: value[index]['font']
                                ),
                              ),
                            ),
                          );
                        }
                      ),

                      BColorPicker(
                        paletteType: PaletteType.hsl,
                        titleWidget: Container(
                          height: 40,
                          width: Dimensions.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colora.primaryColor,
                          ),
                          child: const Center(
                            child: Text(
                              "رنگ بندی فونت",
                              style: TextStyle(color: Colora.scaffold)),
                          ),
                        ),
                      ),

                      Container(
                        width: Dimensions.width,
                        decoration: const BoxDecoration(
                          color: Colora.lightBlue,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(Dimensions.fifteen),
                            bottomRight: Radius.circular(Dimensions.fifteen)
                          )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MaterialButton(
                              onPressed: (){
                                Navigator.pop(context);
                              },
                              child: Text(
                                'ذخیره',
                                style: TextStyle(
                                    color: Colora.scaffold_,
                                    fontSize: Dimensions.width * 0.038,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            MaterialButton(
                              onPressed: (){
                                Navigator.pop(context);
                                bloc.add(const SelectFontColor(fontColor: Colors.white));
                                bloc.add(const SelectFontFamily(fontFamily: ''));
                              },
                              child: Text(
                                'بازگشت',
                                style: TextStyle(
                                    color: Colora.scaffold_,
                                    fontSize: Dimensions.width * 0.038,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ],
                        ),
                      )

                    ],
                  ),
                ),
              );
            }
          ),
        ),
  );
}

void changeColor(BuildContext context, bloc){

  showDialog(
    barrierColor: const Color(0x00000000),
    barrierDismissible: false,
    context: context,
    builder: (context) =>
        AlertDialog(
          // shadowColor: Colors.black,
          contentPadding: const EdgeInsets.all(0),
          backgroundColor: Colors.transparent,
          alignment: Alignment.bottomCenter,
          content: SizedBox(
            height: Dimensions.height * 0.42,
            child: Column(
              children: [

                AColorPicker(
                  paletteType: PaletteType.hsl,
                  titleWidget: Container(
                    height: 40,
                    width: Dimensions.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colora.primaryColor,
                    ),
                    child: const Center(
                      child: Text(
                          "رنگ بندی قسمت بالا",
                          style: TextStyle(color: Colora.scaffold)),
                    ),
                  ),
                ),

                Container(
                  width: Dimensions.width,
                  decoration: const BoxDecoration(
                      color: Colora.lightBlue,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(Dimensions.fifteen),
                          bottomRight: Radius.circular(Dimensions.fifteen)
                      )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MaterialButton(
                        onPressed: (){},
                        child: Text(
                          'ذخیره',
                          style: TextStyle(
                              color: Colora.scaffold_,
                              fontSize: Dimensions.width * 0.038,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      MaterialButton(
                        onPressed: (){
                          Navigator.pop(context);
                          bloc.add(const SelectTopColor(topColor: Colora.primaryColor));
                        },
                        child: Text(
                          'بازگشت',
                          style: TextStyle(
                              color: Colora.scaffold_,
                              fontSize: Dimensions.width * 0.038,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ],
                  ),
                )

              ],
            ),
          ),
        ),
  );

}
