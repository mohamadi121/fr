// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../../../shared/widgets/custom_button.dart';
import '../../../shared/widgets/custom_textfield.dart';
import '../../../shared/widgets/radio_button.dart';
import '../../../shared/widgets/simple_title.dart';
import '../../../shared/constants/constants.dart';
// import '../../../shared/widgets/radio_button_widget.dart';

class BasicInfo extends StatefulWidget {
  const BasicInfo({super.key});

  @override
  State<BasicInfo> createState() => _BasicInfoState();
}

class _BasicInfoState extends State<BasicInfo> {
  String selectedValue = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.height * .6,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: Dimensions.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.redAccent),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              height: Dimensions.height * .65,
              width: Dimensions.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colora.primaryColor),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SimpleTitle(title: 'انتخاب قالب'),
                  Row(
                    children: [
                      radioButton(
                        title: "فروشگاهی",
                        value: "x",
                        groupValue: selectedValue,
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value!;
                          });
                        },
                      ),
                      radioButton(
                        title: "شرکتی",
                        value: "y",
                        groupValue: selectedValue,
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 7),
                  CustomTextField(
                      controller: TextEditingController(),
                      text: "شناسه کسب و کار"),
                  const SizedBox(height: 7),
                  CustomTextField(
                      controller: TextEditingController(),
                      text: "نام کسب و کار"),
                  const SizedBox(height: 7),
                  CustomTextField(
                    controller: TextEditingController(),
                    text: "توضیحات",
                    maxLine: 6,
                  ),
                  const SizedBox(height: 7),
                  CustomTextField(
                      controller: TextEditingController(),
                      text: "شعار تبلیغاتی"),
                  const SizedBox(height: 7),
                  CustomTextField(
                      controller: TextEditingController(), text: "کد ملی"),
                  const Text(
                    "کد ملی صرفا جهت تخصیص آگهی به شما میباشد",
                    style: TextStyle(color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: CustomButton(
                      onPress: () {},
                      text: "انتخاب شغل",
                      color: Colors.white,
                      textColor: Colora.primaryColor,
                      height: 40,
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: CustomButton(
                        onPress: () {},
                        text: "بعدی",
                        color: Colors.white,
                        textColor: Colora.primaryColor,
                        height: 40,
                        width: 100,
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
}
