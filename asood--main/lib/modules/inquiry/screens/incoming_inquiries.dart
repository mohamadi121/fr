// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

import '../../../shared/constants/constants.dart';
import '../../../shared/widgets/default_appbar.dart';
import '../../../shared/widgets/inquiry_top_bar_widget.dart';
import '../../../shared/widgets/simple_bot_navbar.dart';

class IncomingInquieresScreen extends StatelessWidget {
  const IncomingInquieresScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(context: context),
      body: SafeArea(
        child: Center(
          child: Container(
            margin: const EdgeInsets.only(top: 20),
            width: Dimensions.width * 0.9,
            child: Column(
              children: [
                const InquiryTopBar(),
                Container(
                  child: const Column(
                    children: [],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const SimpleBotNavBar(),
    );
  }
}
