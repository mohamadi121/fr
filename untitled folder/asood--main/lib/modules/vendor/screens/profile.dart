// ignore_for_file: sized_box_for_whitespace

import 'package:asood/shared/widgets/custom_button.dart';
import 'package:asood/shared/widgets/custom_textfield.dart';
import 'package:asood/shared/widgets/multi_file_selector.dart';
import 'package:asood/shared/widgets/picture_selector.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../shared/constants/constants.dart';
import '../../../shared/widgets/default_appbar.dart';
import '../../../shared/widgets/simple_bot_navbar.dart';

@RoutePage()
class VendorProfileScreen extends StatelessWidget {
  const VendorProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(context: context),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colora.primaryColor,
            ),
            child: Column(
              children: [
                CustomTextField(
                  controller: TextEditingController(),
                  text: 'text',
                  labelText: 'نام: ',
                ),
                const SizedBox(height: 10),
                CustomTextField(
                  controller: TextEditingController(),
                  text: 'text',
                  labelText: 'شماره تماس: ',
                ),
                const SizedBox(height: 10),
                CustomTextField(
                  controller: TextEditingController(),
                  text: 'text',
                  labelText: 'نامشخص: ',
                ),
                const SizedBox(height: 10),
                CustomTextField(
                  controller: TextEditingController(),
                  text: 'text',
                  labelText: 'کد ملی: ',
                ),
                const SizedBox(height: 10),
                CustomTextField(
                  controller: TextEditingController(),
                  text: 'text',
                  labelText: 'تاریخ تولد: ',
                ),
                const SizedBox(height: 10),
                CustomTextField(
                  controller: TextEditingController(),
                  text: 'text',
                  labelText: 'شماره‌ی کارت بانکی: ',
                ),
                const SizedBox(height: 10),
                const PictureSelector(),
                const SizedBox(height: 10),
                Container(
                  height: 200,
                  child: const MultiFileSelector(),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomButton(
                      onPress: () {},
                      text: 'ذخیره',
                      textColor: Colora.primaryColor,
                      color: Colors.white,
                      width: 150,
                    )
                  ],
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
