import 'dart:io';

import 'package:asood/models/market_model.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shimmer/shimmer.dart';

import '../../../shared/constants/constants.dart';
import '../../../shared/utils/snack_bar_util.dart';
import '../../../shared/widgets/comment_messagebox_widget.dart';
import '../../../shared/widgets/custom_bottom_navbar.dart';
import '../../../shared/widgets/custom_button.dart';
import '../../../shared/widgets/custom_textfield.dart';
import '../../vendor/blocs/vendor/vendor_bloc.dart';
import '../widgets/store_appbar.dart';

@RoutePage()
class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key, required this.market});
  final MarketModel market;

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {

  late VendorBloc bloc;

  List<String> buttonTitles = ["محصولات", "ویژه ها", "نظرات", "ارتباط با ما"];

  int selectedIndex = 0;

  int currentSliderIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    bloc = BlocProvider.of<VendorBloc>(context);
    bloc.add(LoadSlider(marketId: 22));
  }

  void addSliderImage(context){
    String preview = '';
    XFile? image;
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) =>
        StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              content: SizedBox(
                height: Dimensions.height * 0.24,
                width: Dimensions.width * 0.7,
                child: BlocConsumer<VendorBloc, VendorState>(
                  listener: (context, state) {
                    if (state.status == VendorStatus.success) {

                    }
                    else if (state.status == VendorStatus.failure) {
                      showSnackBar(context, "مشکلی پیش آمده مجددا تلاش کنید");
                    }
                  },
                  builder: (context, state){
                    return Column(
                      children: [

                        //title
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'عکس اسلایدر',
                            style: TextStyle(
                              color: Colora.primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: Dimensions.width * 0.05
                            ),
                          ),
                        ),

                        const Divider(
                          color: Colora.primaryColor,
                        ),

                        //buttons and preview
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //add
                            Container(
                              width: Dimensions.width * 0.4,
                              padding: EdgeInsets.symmetric(
                                vertical: Dimensions.height * 0.01
                              ),
                              child: AspectRatio(
                                aspectRatio: 16/9,
                                child: InkWell(
                                  onTap: () async{
                                    var maxFileSizeInBytes = 5 * 1048576;

                                    final ImagePicker picker = ImagePicker();
                                    image = await picker.pickImage(source: ImageSource.gallery);

                                    var imagePath = await image!.readAsBytes();
                                    var fileSize = imagePath.length;

                                    if (fileSize <= maxFileSizeInBytes) {
                                      setState(() {
                                        preview = image!.path;
                                      });
                                    } else {
                                      showSnackBar(context, "حجم عکس بیش از ۵ مگابایت است");
                                    }
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colora.primaryColor, width: 2),
                                    ),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: preview == ''
                                          ?Icon(
                                            Icons.add_photo_alternate_rounded,
                                            color: Colora.primaryColor,
                                            size: Dimensions.width * 0.1,
                                          )
                                          :Image.file(
                                            File(preview),
                                            fit: BoxFit.cover,
                                          ),
                                      )
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        //back and save
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            //save
                            Align(
                              alignment: Alignment.centerLeft,
                              child: state.status == VendorStatus.loading
                                ?Container(
                                  width: Dimensions.width * 0.3,
                                  height: Dimensions.height * 0.042,
                                  padding: EdgeInsets.symmetric(
                                      vertical: Dimensions.height * 0.01
                                  ),
                                  margin: EdgeInsets.only(
                                      top: Dimensions.height * 0.02
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colora.primaryColor,
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: const Center(
                                    child: FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child:CircularProgressIndicator(
                                          color: Colora.scaffold_,
                                        )
                                    ),
                                  ),
                                )
                                :InkWell(
                                  onTap: (){
                                    if(image != null){
                                      bloc.add(AddSliderEvent(id: 22, sliderImage: image!));
                                      Navigator.pop(context);
                                      // initLogoImage = editLogoImage;
                                    }
                                    else{
                                      showSnackBar(context, "لطفا عکس خود را انتخاب کنید");
                                    }
                                  },
                                  child: Container(
                                    width: Dimensions.width * 0.3,
                                    padding: EdgeInsets.symmetric(
                                        vertical: Dimensions.height * 0.01
                                    ),
                                    margin: EdgeInsets.only(
                                        top: Dimensions.height * 0.02
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colora.primaryColor,
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: Center(
                                      child: FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Text(
                                          'ذخیره',
                                          style: TextStyle(
                                              color: Colora.scaffold,
                                              fontSize: Dimensions.width * 0.033
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                            //back
                            InkWell(
                              onTap: (){
                                // editLogoImage = widget.logoImage!;
                                Navigator.pop(context);
                              },
                              child: Container(
                                width: Dimensions.width * 0.3,
                                padding: EdgeInsets.symmetric(
                                    vertical: Dimensions.height * 0.01
                                ),
                                margin: EdgeInsets.only(
                                    top: Dimensions.height * 0.02
                                ),
                                decoration: BoxDecoration(
                                    color: Colora.primaryColor,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child: Center(
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      'بازگشت',
                                      style: TextStyle(
                                          color: Colora.scaffold,
                                          fontSize: Dimensions.width * 0.033
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),

                      ],
                    );
                  },
                  )
              ),
            );
          }
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colora.primaryColor,
      child: BlocBuilder<VendorBloc, VendorState>(
        builder: (context, state) {
          return SafeArea(
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
              body: SizedBox(
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

                            //slider
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
                                  enableInfiniteScroll: false,
                                  disableCenter: false,
                                  pageSnapping: true,
                                  autoPlay: false,
                                ),
                                items: List.generate(
                                  state.sliderList.length + 1,
                                  (index) => (index != state.sliderList.length)
                                    ?Container(
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
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [

                                            //image
                                            CachedNetworkImage(
                                              imageUrl: state.sliderList[index].image.toString(),
                                              imageBuilder: (context, imageProvider) {
                                                return Container(
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
                                                  ),
                                                );
                                              },
                                              placeholder: (context, url) => Shimmer.fromColors(
                                                baseColor: Colors.grey.withOpacity(0.2),
                                                highlightColor: Colors.black.withOpacity(0.2),
                                                direction: ShimmerDirection.rtl,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.grey,
                                                      borderRadius: BorderRadius.circular(5)
                                                  ),
                                                ),
                                              ),
                                              errorWidget: (context, url, error) => const Icon(Icons.error),
                                            ),

                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [

                                                //edit
                                                Container(
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Colora.scaffold_,
                                                    border: Border.all(
                                                      color: Colora.primaryColor,
                                                      width: 2
                                                    )
                                                  ),
                                                  child: IconButton(
                                                    onPressed: (){},
                                                    icon: Icon(
                                                      Icons.edit_rounded,
                                                      color: Colora.primaryColor,
                                                      size: Dimensions.width * 0.06,
                                                    )
                                                  ),
                                                ),

                                                SizedBox(width: Dimensions.width * 0.1,),

                                                //remove
                                                Container(
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Colora.scaffold_,
                                                    border: Border.all(
                                                      color: Colora.primaryColor,
                                                      width: 2
                                                    )
                                                  ),
                                                  child: IconButton(
                                                    onPressed: (){
                                                      state.sliderList.removeAt(index);
                                                      setState(() {
                                                        currentSliderIndex = index + 1;
                                                      });
                                                    },
                                                    icon: Icon(
                                                      Icons.delete_rounded,
                                                      color: Colors.redAccent,
                                                      size: Dimensions.width * 0.06,
                                                    )
                                                  ),
                                                )

                                              ],
                                            )

                                          ],
                                        ),
                                      )
                                    )
                                    :Stack(
                                      children: [
                                        Container(
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
                                          child: InkWell(
                                            onTap: (){
                                              addSliderImage(context);
                                            },
                                            child: Stack(
                                              children: [
                                                //image
                                                Container(
                                                  width: Dimensions.width,
                                                  decoration: BoxDecoration(
                                                    color: Colora.scaffold,
                                                    borderRadius: BorderRadius.circular(20),
                                                  ),
                                                  child: Image.asset(
                                                      'assets/images/logo.png'
                                                  ),
                                                ),

                                                //add
                                                Container(
                                                  width: Dimensions.width,
                                                  decoration: BoxDecoration(
                                                    color: Colora.scaffold.withOpacity(0.7),
                                                    borderRadius: BorderRadius.circular(20),
                                                  ),
                                                  child: Center(
                                                    child: Icon(
                                                      Icons.add_photo_alternate_rounded,
                                                      color: Colora.primaryColor,
                                                      size: Dimensions.width * 0.2,
                                                    ),
                                                  ),

                                                ),
                                              ],
                                            ),
                                          )
                                        ),

                                        //delete
                                        // Positioned(
                                        //   top: Dimensions.height * 0.015,
                                        //   left: Dimensions.width * 0.01,
                                        //   child: Container(
                                        //     decoration: BoxDecoration(
                                        //       shape: BoxShape.circle,
                                        //       color: Colors.white,
                                        //       border: Border.all(
                                        //         color: Colora.primaryColor,
                                        //         width: 2
                                        //       )
                                        //     ),
                                        //     child: IconButton(
                                        //       onPressed: (){},
                                        //       icon: const Icon(
                                        //         Icons.delete,
                                        //         color: Colors.redAccent,
                                        //       ),
                                        //     ),
                                        //   )
                                        // )
                                      ],
                                    ),
                                ),
                              ),
                            ),

                            const SizedBox(
                              height: 7,
                            ),

                            //buttons
                            Container(
                              width: Dimensions.width,
                              margin: EdgeInsets.only(bottom: Dimensions.height * 0.02),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
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
                                        margin: EdgeInsets.symmetric(
                                          horizontal: Dimensions.width * 0.01
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
                                              fontWeight: FontWeight.bold,
                                              fontSize: Dimensions.width * 0.035
                                            ),
                                          ),
                                        ),
                                      )
                                    )
                                  ],
                                ),
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

                            //items
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
                      id: widget.market.businessId!,
                      title: widget.market.name!,
                      backImage: widget.market.backgroundImg.toString() == 'null' ? '' : widget.market.backgroundImg,
                      logoImage: widget.market.logoImg.toString() == 'null' ? '' : widget.market.logoImg,
                    ),

                    Positioned(
                      width: Dimensions.width,
                      height: Dimensions.height * 0.05,
                      top: Dimensions.height * 0.215,
                      child: Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: Dimensions.width * 0.1
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //edit
                              IconButton(
                                onPressed: () {
                                  print("pressed");
                                },
                                padding: const EdgeInsets.all(0),
                                icon: Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                  size: Dimensions.width * 0.055,
                                ),
                              ),

                              //save
                              IconButton(
                                onPressed: () {
                                  print("pressed");
                                },
                                icon: Icon(
                                  Icons.save,
                                  color: Colors.white,
                                  size: Dimensions.width * 0.055,
                                ),
                              ),

                              //mark
                              IconButton(
                                onPressed: () {
                                  print("pressed");
                                },
                                icon: Icon(
                                  Icons.bookmark,
                                  color: Colors.white,
                                  size: Dimensions.width * 0.055,
                                ),
                              ),

                              //share
                              IconButton(
                                onPressed: () {
                                  print("pressed");
                                },
                                icon: Icon(
                                  Icons.share,
                                  color: Colors.white,
                                  size: Dimensions.width * 0.055,
                                ),
                              ),

                              //upload
                              IconButton(
                                onPressed: () {
                                  print("pressed");
                                },
                                icon: Icon(
                                  Icons.upload_file_outlined,
                                  color: Colors.white,
                                  size: Dimensions.width * 0.055,
                                ),
                              ),

                              //list
                              IconButton(
                                onPressed: () {
                                  print("pressed");
                                },
                                icon: Icon(
                                  Icons.list_alt,
                                  color: Colors.white,
                                  size: Dimensions.width * 0.055,
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
          );
        }
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
