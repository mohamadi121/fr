// ignore_for_file: avoid_print, sized_box_for_whitespace

import 'package:asood/models/market_model.dart';
import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../shared/constants/constants.dart';
import '../../../shared/widgets/comment_messagebox_widget.dart';
import '../../../shared/widgets/custom_bottom_navbar.dart';
import '../../../shared/widgets/custom_button.dart';
import '../../../shared/widgets/custom_textfield.dart';
import '../../../shared/widgets/hamberger_menu.dart';
import '../widgets/store_appbar.dart';

@RoutePage()
class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key, required this.market});
  final MarketModel market;

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {

  List<String> buttonTitles = ["محصولات", "ویژه ها", "نظرات", "ارتباط با ما"];

  int selectedIndex = 0;

  int currentSliderIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colora.primaryColor,
      child: SafeArea(
        child: Scaffold(
          // appBar: StoreAppBar(
          //   context: context,
          //   title: widget.market.name!,
          //   description: widget.market.name!,
          //   appbarTools: Positioned(
          //     right: 0,
          //     left: 0,
          //     bottom: 0,
          //     child: Center(
          //       child: Container(
          //         height: 40,
          //         width: Dimensions.width * .8,
          //         decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(20),
          //           color: Colora.primaryColor,
          //         ),
          //         child: Center(
          //           child: Row(
          //             mainAxisAlignment: MainAxisAlignment.center,
          //             children: [
          //           IconButton(
          //             onPressed: () {
          //               print("pressed");
          //             },
          //             icon: const Icon(
          //               Icons.edit,
          //               color: Colors.white,
          //             ),
          //           ),
          //           IconButton(
          //             onPressed: () {
          //               print("pressed");
          //             },
          //             icon: const Icon(
          //               Icons.save,
          //               color: Colors.white,
          //             ),
          //           ),
          //           IconButton(
          //             onPressed: () {
          //               print("pressed");
          //             },
          //             icon: const Icon(
          //               Icons.bookmark,
          //               color: Colors.white,
          //             ),
          //           ),
          //           IconButton(
          //             onPressed: () {
          //               print("pressed");
          //             },
          //             icon: const Icon(
          //               Icons.share,
          //               color: Colors.white,
          //             ),
          //           ),
          //           IconButton(
          //             onPressed: () {
          //               print("pressed");
          //             },
          //             icon: const Icon(
          //               Icons.upload_file_outlined,
          //               color: Colors.white,
          //             ),
          //           ),
          //           IconButton(
          //             onPressed: () {
          //               print("pressed");
          //             },
          //             icon: const Icon(
          //               Icons.list_alt,
          //               color: Colors.white,
          //             ),
          //           ),
          //         ],
          //           )
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          body: Container(
            height: Dimensions.height,
            width: Dimensions.width,
            child: Stack(
              children: [

                //main items
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        SizedBox(
                          height: Dimensions.height * 0.27,
                        ),

                        //image
                        SizedBox(
                          width: Dimensions.width,
                          child: CarouselSlider(
                            options: CarouselOptions(
                              onPageChanged: (index, reason) {
                                setState(() {
                                  currentSliderIndex = index;
                                });
                              },
                              aspectRatio: 16 / 9,
                              enlargeCenterPage: true,
                              enableInfiniteScroll: true,
                              disableCenter: false,
                              // enlargeFactor: 2,
                              pageSnapping: true,
                              // viewportFraction: .9,
                              autoPlay: true,
                            ),
                            items: List.generate(
                              5,
                              (index) => Container(
                                  width: Dimensions.width,
                                  margin: EdgeInsets.symmetric(
                                    vertical: Dimensions.height * 0.01
                                  ),
                                  padding: EdgeInsets.only(
                                    bottom: Dimensions.height * 0.01
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colora.primaryColor,
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: 5,
                                            spreadRadius: 1
                                        )
                                      ]
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colora.scaffold,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Image.asset(
                                        'assets/images/logo.png'
                                    ),
                                  )
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(
                          height: 7,
                        ),

                        Container(
                          height: 50,
                          width: Dimensions.width,
                          padding: const EdgeInsets.symmetric(horizontal: 7,),
                          margin: EdgeInsets.only(bottom: Dimensions.height * 0.02),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ...List.generate(
                              buttonTitles.length,
                                (index) => AnimatedContainer(
                                  duration: const Duration(milliseconds: 500),
                                  decoration: BoxDecoration(
                                    color: selectedIndex == index
                                      ?Colora.primaryColor
                                      :Colora.scaffold,
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                      color: selectedIndex == index
                                        ?Colora.scaffold
                                        :Colora.primaryColor,
                                    )
                                  ),
                                  child: MaterialButton(
                                    splashColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    enableFeedback: false,
                                    focusColor: Colors.transparent,
                                    onPressed: (){
                                      setState(() {
                                        selectedIndex = index;
                                      });
                                    },
                                    child: Text(
                                      buttonTitles[index],
                                      style: TextStyle(
                                        color: selectedIndex == index
                                          ? Colors.white
                                          : Colora.primaryColor,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                )
                              )
                            ],
                          ),
                          // child: Expanded(
                          //   child: ListView.builder(
                          //     scrollDirection: Axis.horizontal,
                          //     shrinkWrap: true,
                          //     physics: const NeverScrollableScrollPhysics(),
                          //     itemCount: buttonTitles.length,
                          //     itemBuilder: (context, index) {
                          //       return Padding(
                          //         padding: const EdgeInsets.symmetric(
                          //             vertical: 5, horizontal: 3.0),
                          //         child: ElevatedButton(
                          //           onPressed: () {
                          //             setState(() {
                          //               selectedIndex = index;
                          //             });
                          //           },
                          //           style: ButtonStyle(
                          //             backgroundColor: selectedIndex == index
                          //                 ? MaterialStateProperty.all(
                          //                     Colora.primaryColor)
                          //                 : MaterialStateProperty.all(Colors.white),
                          //             shadowColor: MaterialStateProperty.all(
                          //                 Colors.transparent),
                          //             elevation: MaterialStateProperty.all(
                          //                 0), // Remove box shadow
                          //             shape: MaterialStateProperty.all(
                          //               RoundedRectangleBorder(
                          //                 borderRadius: BorderRadius.circular(25.0),
                          //                 side: const BorderSide(
                          //                   color: Colora
                          //                       .primaryColor, // Specify the border color
                          //                 ),
                          //               ),
                          //             ),
                          //           ),
                          //           child: Text(
                          //             buttonTitles[index],
                          //             style: TextStyle(
                          //                 color: selectedIndex == index
                          //                     ? Colors.white
                          //                     : Colora.primaryColor),
                          //           ),
                          //         ),
                          //       );
                          //     },
                          //   ),
                          // ),
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 7),
                          child: selectPageView(selectedIndex),
                        )

                      ],
                    ),
                  ),
                ),

                //appbar
                StoreAppbar2(
                  title: widget.market.name!,
                  // description: widget.market.!,
                  image: widget.market.logoImg.toString() == 'null' ? '' : widget.market.logoImg,
                ),

                Positioned(
                  width: Dimensions.width,
                  height: Dimensions.height * 0.05,
                  top: Dimensions.height * 0.215,
                  child: Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: Dimensions.width * 0.12
                      ),
                      decoration: BoxDecoration(
                        color: Colora.primaryColor,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 5,
                            spreadRadius: 2,
                            offset: const Offset(0, 2)
                          )
                        ]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                              print("pressed");
                            },
                            icon: const Icon(
                              Icons.edit,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              print("pressed");
                            },
                            icon: const Icon(
                              Icons.save,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              print("pressed");
                            },
                            icon: const Icon(
                              Icons.bookmark,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              print("pressed");
                            },
                            icon: const Icon(
                              Icons.share,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              print("pressed");
                            },
                            icon: const Icon(
                              Icons.upload_file_outlined,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              print("pressed");
                            },
                            icon: const Icon(
                              Icons.list_alt,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                  ),
                ),

              ],
            ),
          ),
          bottomNavigationBar: const CustomBottomNavigationBar(),
        ),
      ),
    );
  }
}

/*
class ScrollableButtonList extends StatefulWidget {
  @override
  _ScrollableButtonListState createState() => _ScrollableButtonListState();
}

class _ScrollableButtonListState extends State<ScrollableButtonList> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 50,
        child: Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: buttonTitles.length,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 3.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  style: ButtonStyle(
                    backgroundColor: selectedIndex == index
                        ? MaterialStateProperty.all(Colora.primaryColor)
                        : MaterialStateProperty.all(Colors.white),
                    shadowColor: MaterialStateProperty.all(Colors.transparent),
                    elevation:
                        MaterialStateProperty.all(0), // Remove box shadow
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        side: const BorderSide(
                          color:
                              Colora.primaryColor, // Specify the border color
                        ),
                      ),
                    ),
                  ),
                  child: Text(
                    buttonTitles[index],
                    style: TextStyle(
                        color: selectedIndex == index
                            ? Colors.white
                            : Colora.primaryColor),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}*/

selectPageView(index) {
  switch (index) {
    case 0:
      return productView();
    case 1:
      return specialView();
    case 2:
      return commentView();
    case 3:
      return contactUsView();
    default:
  }
}

productView() {
  return const SingleChildScrollView(
    child: Column(children: [
      Center(
        child: Text("فروش ابزار یراق"),
      ),
    ]),
  );
}

specialView() {
  return const SingleChildScrollView(
    child: Column(children: [
      Center(
        child: Text("ویژه‌ها"),
      ),
    ]),
  );
}

commentView() {
  return SingleChildScrollView(
    child: Column(children: [
      Row(
        children: [
          Expanded(
            flex: 5,
            child: SizedBox(
              height: 35,
              child: CustomTextField(
                  color: Colora.lightBlue,
                  controller: TextEditingController(),
                  hintStyle: const TextStyle(color: Colors.white),
                  text: 'نام و نام خانوادگی'),
            ),
          ),
          Expanded(
            flex: 5,
            child: SizedBox(
              height: 35,
              child: CustomTextField(
                color: Colora.lightBlue,
                controller: TextEditingController(),
                hintStyle: const TextStyle(color: Colors.white),
                text: 'شماره موبایل',
                keyboardType: TextInputType.number,
              ),
            ),
          ),
        ],
      ),
      const SizedBox(height: 7),
      Container(
        width: Dimensions.width,
        child: Stack(
          children: [
            CustomTextField(
                color: Colora.lightBlue,
                maxLine: 7,
                hintStyle: const TextStyle(color: Colors.white),
                controller: TextEditingController(),
                text: "پیام شما ..."),
            Positioned(
                bottom: 10,
                left: 20,
                child: CustomButton(
                  width: 100,
                  onPress: () {},
                  text: "ارسال",
                  color: Colora.primaryColor,
                )),
          ],
        ),
      ),
      const CMBox(
        senderName: 'میلاد',
        messageText: 'سلام محصولاتتون عالی هستند',
        senderImageUrl: 'https://via.placeholder.com/150',
      ),
    ]),
  );
}

contactUsView() {
  return SingleChildScrollView(
    child: Column(
      children: [
        const SizedBox(
          height: 7,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'راه های ارتباطی:',
              style: TextStyle(color: Colora.primaryColor),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text("۰۹۱۹۱۲۳۴۵۶۲"),
                    Icon(Icons.mobile_friendly_rounded),
                  ],
                ),
                Row(
                  children: [
                    Text("۰۹۱۹۱۲۳۴۵۶۲"),
                    Icon(Icons.mobile_friendly_rounded),
                  ],
                ),
                Row(
                  children: [
                    Text("۰۹۱۹۱۲۳۴۵۶۲"),
                    Icon(Icons.mobile_friendly_rounded),
                  ],
                ),
                Row(
                  children: [
                    Text("۰۹۱۹۱۲۳۴۵۶۲"),
                    Icon(Icons.mobile_friendly_rounded),
                  ],
                ),
              ],
            )
          ],
        ),
        const Align(
            alignment: Alignment.topRight, child: Text("شبکه های اجتماعی:")),
        const Align(
          alignment: Alignment.topCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.telegram),
              Icon(Icons.telegram),
              Icon(Icons.telegram),
              Icon(Icons.telegram),
            ],
          ),
        ),
        const SizedBox(
          height: 7,
        ),
        Container(
          height: 200,
          width: Dimensions.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colora.scaffold,
            border: Border.all(color: Colora.primaryColor, width: 3),
          ),
          child: const Center(
            child: Text("نقشه"),
          ),
        ),
        const SizedBox(
          height: 7,
        ),
        const Align(
          alignment: Alignment.topCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'آدرس:',
                style: TextStyle(
                    color: Colora.primaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'زنجان',
                style: TextStyle(color: Colora.primaryColor, fontSize: 14),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
