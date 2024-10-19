import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../../shared/constants/constants.dart';
import '../../../shared/widgets/default_appbar.dart';

@RoutePage()
class ShoppingCart extends StatefulWidget {
  const ShoppingCart({super.key});

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colora.primaryColor,
      child: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
          
              const NewAppBar(title: 'سبد خرید‌'),

              SingleChildScrollView(
                child: Column(
                  children: [

                    SizedBox(
                      height: Dimensions.height * 0.11,
                    ),

                    ListView.builder(
                      itemCount: 5,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => Container(
                        width: Dimensions.width * 0.9,
                        height: Dimensions.height * 0.15,
                        margin: EdgeInsets.symmetric(
                          vertical: Dimensions.height * 0.005,
                          horizontal: Dimensions.width * 0.04
                        ),
                        decoration: BoxDecoration(
                          color: Colora.lightBlue,
                          borderRadius: BorderRadius.circular(8)
                        ),
                        child: Row(
                          children: [
                            //image
                            SizedBox(
                              width: Dimensions.width * 0.32,
                              child: AspectRatio(
                                aspectRatio: 1,
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(8),
                                    bottomRight: Radius.circular(8)
                                  ),
                                  child: Container(
                                    color: Colors.redAccent,
                                  )
                                ),
                              ),
                            ),
                            SizedBox(
                              width: Dimensions.width * 0.6,
                              child: Column(
                                children: [

                                  //title
                                  Container(
                                    width: Dimensions.width * 0.6,
                                    height: Dimensions.height * 0.06,
                                    margin: EdgeInsets.symmetric(
                                      horizontal: Dimensions.width * 0.03,
                                      vertical: Dimensions.height * 0.01
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colora.primaryColor,
                                      borderRadius: BorderRadius.circular(8)
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      'محصول شماره ${index + 1}',
                                      style: TextStyle(
                                        color: Colora.scaffold,
                                        fontSize: Dimensions.width * 0.03
                                      ),
                                    ),
                                  ),

                                  //price and count
                                  Container(
                                    width: Dimensions.width * 0.7,
                                    height: Dimensions.height * 0.07,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: Dimensions.width * 0.03,
                                    ),
                                    alignment: Alignment.center,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        
                                        Text(
                                          '120.000 تومان',
                                          style: TextStyle(
                                              color: Colora.scaffold,
                                              fontSize: Dimensions.width * 0.03
                                          ),
                                        ),

                                        Container(
                                          width: 100,
                                          height: 10,
                                          color: Colors.blue,
                                        )
                                        
                                      ],
                                    )
                                  ),
                                  
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )

                  ],
                ),
              )
          
            ],
          ),
        ),
      ),
    );
  }
}

