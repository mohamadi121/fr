// ignore_for_file: sized_box_for_whitespace, unused_import, unnecessary_import

import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

import '../../../shared/constants/constants.dart';
import '../../../shared/widgets/default_appbar.dart';
import '../../../shared/widgets/item_box_with_title.dart';
import '../../../shared/widgets/simple_itembox.dart';
import 'create_workspace.dart';

Map dummyData = {
  "firstMenu": [
    {
      "title": "ایجاد دفتر کار",
      "image": Container(),
      "page": const CreateWorkSpaceScreen(),
    },
    {
      "title": "کسب درآمد از آسود",
      "image": Container(),
    },
    {"title": "کارت ویزیت", "image": Container()},
    {"title": "استعلام بها", "image": Container()},
    {
      "title": "ثبت آگهی",
      "image": Container(),
    },
    {"title": "بازاریاب", "image": Container()}
  ],
  "secondMenu": [
    {
      "title": "امور مالی",
      "image": Container(),
      "page": const CreateWorkSpaceScreen()
    },
    {"title": "رهیابی خرید", "image": Container()},
    {"title": "رهیابی فروش", "image": Container()},
    {
      "title": "اشتراک گذاری",
      "image": const Icon(
        Icons.share,
        size: 60,
        color: Colors.white,
      )
    },
    {"title": "پیام کوتاه", "image": Container()},
    {"title": "علاقه مندی", "image": Container()},
    {"title": "راهنما", "image": Container()},
    {"title": "پشتیبانی", "image": Container()},
    {"title": "تنظیمات", "image": Container()}
  ]
};

@RoutePage()
class VendorHomeScreen extends StatefulWidget {
  const VendorHomeScreen({super.key, required this.title});

  static const routeName = "/home";
  final String title;

  @override
  State<VendorHomeScreen> createState() => _VendorHomeScreenState();
}

class _VendorHomeScreenState extends State<VendorHomeScreen> {
  // int _bottomNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: DefaultAppBar(context: context),
      body: Center(
        child: Container(
          height: Dimensions.height,
          width: Dimensions.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Main column with carousel and grids
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    // margin: const EdgeInsets.all(8.0),
                    padding: const EdgeInsets.only(top: Dimensions.seven),
                    decoration: BoxDecoration(
                      /*  border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ), */
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    // width: MediaQuery.of(context).size.width * 0.90,
                    child: const Column(
                      children: [
                        // Dotted Carousel with 20% height
                        DashboardCarouselWidget(),
                        /*    const SizedBox(
                          height: 6,
                        ), */

                        // Grid with 25% height, 2 rows, and 3 columns
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: Dimensions.khorisontal),
                          child: DashboardServicesWidget(),
                        ),

                        // Grid with 35% height, 3 rows, and 3 columns
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: Dimensions.khorisontal),
                          child: DashboardAdditionalWidget(),
                        ),
                        SizedBox(
                          height: 120,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Stack(
        children: [
          CustomPaint(
            size: const Size(400, 90),
            painter: CurvedPainter(),
          ),
          Positioned(
              bottom: Dimensions.height * .029,
              left: Dimensions.width * .12,
              child: const Icon(
                Icons.tab,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}

class DashboardAdditionalWidget extends StatelessWidget {
  const DashboardAdditionalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6.0),
      padding: const EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        /*  border: Border.all(
          color: Colors.black,
          width: 1.0,
        ), */
        color: Colors.white,
        boxShadow: Deco.kshadow,
        borderRadius: BorderRadius.circular(20.0),
      ),
      height: Dimensions.height * 0.45,
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Align(
                alignment: Alignment.centerRight,
                child: Container(
                    margin: const EdgeInsets.only(right: 20, bottom: 10),
                    child: Text(
                      "امکانات:",
                      style: ATextStyle.lightBlue16
                          .copyWith(fontWeight: FontWeight.bold),
                    ))),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: Dimensions.height * .36,
                  width: Dimensions.width * .65,
                  child: Expanded(
                    child: GridView.count(
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisCount: 3,
                      shrinkWrap: true,
                      cacheExtent: 2,
                      childAspectRatio: 4 / 5.5,
                      crossAxisSpacing: 22,
                      mainAxisSpacing: 0,
                      children: [
                        ...List.generate(
                          dummyData["secondMenu"].length,
                          (index) => FittedBox(
                            child: ItemBoxTitle(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        dummyData["secondMenu"][index]["page"],
                                  ),
                                );
                              },
                              title: dummyData["secondMenu"][index]["title"],
                              child: dummyData["secondMenu"][index]["image"],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardServicesWidget extends StatelessWidget {
  const DashboardServicesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        /*  border: Border.all(
          color: Colors.black,
          width: 1.0,
        ), */
        color: Colors.white,
        boxShadow: Deco.kshadow,
        borderRadius: BorderRadius.circular(20.0),
      ),
      height: MediaQuery.of(context).size.height * 0.40,
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Align(
                alignment: Alignment.centerRight,
                child: Container(
                    margin: const EdgeInsets.only(right: 20, bottom: 6),
                    child: Text(
                      "کسب وکار:",
                      style: ATextStyle.lightBlue16
                          .copyWith(fontWeight: FontWeight.bold),
                    ))),
            Container(
              height: Dimensions.height * .40,
              width: Dimensions.width * .75,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GridView.count(
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 3,
                    shrinkWrap: true,
                    cacheExtent: 2,
                    childAspectRatio: 3 / 4.7,
                    crossAxisSpacing: 22,
                    mainAxisSpacing: 8,
                    children: [
                      ...List.generate(
                        dummyData["firstMenu"].length,
                        (index) => SimpleItemBox(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        dummyData["firstMenu"][index]["page"]));
                          },
                          title: dummyData["firstMenu"][index]["title"],
                          child: dummyData["firstMenu"][index]["image"],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardCarouselWidget extends StatefulWidget {
  const DashboardCarouselWidget({super.key});

  @override
  State<DashboardCarouselWidget> createState() =>
      _DashboardCarouselWidgetState();
}

class _DashboardCarouselWidgetState extends State<DashboardCarouselWidget> {
  int currenSlaiderIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.30,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Stack(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              onPageChanged: (index, reason) {
                setState(() {
                  currenSlaiderIndex = index;
                });
              },
              aspectRatio: 16 / 9,
              enlargeCenterPage: true,
              enableInfiniteScroll: true,
              disableCenter: false,
              enlargeFactor: 2,
              pageSnapping: true,
              viewportFraction: .9,
              autoPlay: true,
            ),
            items: List.generate(
              5,
              (index) => Container(
                decoration: BoxDecoration(
                  border: const Border(
                      bottom: BorderSide(
                    width: 11.0,
                  )),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Center(
                    child: Image.asset(
                        'assets/images/tools-that-you-should-have.jpg')),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
