// ignore_for_file: sized_box_for_whitespace

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../shared/constants/constants.dart';
import '../../../shared/widgets/custom_button.dart';
import '../../../shared/widgets/default_appbar.dart';
import '../../../shared/widgets/inquiry_top_bar_extended.dart';
import '../../../shared/widgets/product_service_inquiry_list_widget.dart';
import '../../../shared/widgets/simple_bot_navbar.dart';

@RoutePage()
class OrdersListScreen extends StatelessWidget {
  const OrdersListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(context: context),
      body: SafeArea(
        child: Center(
          child: Container(
            margin: const EdgeInsets.only(
              top: 10,
            ),
            width: Dimensions.width * 0.9,
            child: Column(
              children: [
                const InquiryTopBarExtended(),
                const ProductServiceInquiryList(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 150,
                      child: CustomButton(
                        onPress: () {},
                        text: "سفارش جدید",
                      ),
                    ),
                    Container(
                      width: 150,
                      child: CustomButton(
                        onPress: () {},
                        text: "ارسال استعلام",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const SimpleBotNavBar(),
    );
  }
}
