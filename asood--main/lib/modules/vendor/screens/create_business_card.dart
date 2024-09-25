// ignore_for_file: unused_import

import 'package:asood/shared/widgets/custom_textfield.dart';
import 'package:asood/shared/widgets/radio_button.dart';
import 'package:flutter/material.dart';

import '../../../shared/constants/constants.dart';
import '../../../shared/widgets/custom_button.dart';
import '../../../shared/widgets/default_appbar.dart';
import '../../../shared/widgets/map_widget.dart';
import '../../../shared/widgets/simple_bot_navbar.dart';

class CreateBusinessCard extends StatefulWidget {
  const CreateBusinessCard({super.key});

  @override
  State<CreateBusinessCard> createState() => _CreateBusinessCardState();
}

class _CreateBusinessCardState extends State<CreateBusinessCard> {
  // Define a variable to track the current selection
  String _selectedType = 'corporation';
  String? _selectedJobTitle; // Variable to keep track of the selected job title
  final List<String> _jobTitles = [
    'Software Developer',
    'Product Manager',
    'Graphic Designer',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(context: context),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colora.primaryColor,
              ),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      radioButton(
                        title: 'شرکتی',
                        groupValue:
                            _selectedType, // Use the _selectedType variable here
                        value: 'corporation',
                        onChanged: (value) {
                          // Update the _selectedType variable when the radio button is selected
                          setState(() {
                            _selectedType = value!;
                          });
                        },
                      ),
                      radioButton(
                        title: 'فروشگاهی',
                        groupValue: _selectedType, // And here
                        value: 'shop',
                        onChanged: (value) {
                          // And also here
                          setState(() {
                            _selectedType = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.white, // Dropdown background color
                        borderRadius: BorderRadius.circular(20), // Curved edges
                      ),
                      child: DropdownButton<String>(
                        isExpanded: true,
                        value: _selectedJobTitle,
                        hint: const Text('Select job title'),
                        onChanged: (String? newValue) {
                          setState(() {
                            _selectedJobTitle = newValue;
                          });
                        },
                        items: _jobTitles
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Center(
                              child: Container(
                                decoration: BoxDecoration(
                                  // color: Colors.white, // Menu item background color
                                  borderRadius: BorderRadius.circular(
                                      25), // Curved edges for menu items
                                ),
                                child: Text(value),
                              ),
                            ),
                          );
                        }).toList(),
                        underline: Container(), // Removes the default underline
                        dropdownColor: Colors
                            .white, // Background color for the dropdown items
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  CustomTextField(
                      controller: TextEditingController(),
                      text: 'نام کسب و کار: '),
                  const SizedBox(height: 20),
                  CustomTextField(
                    controller: TextEditingController(),
                    text: 'توضیحات',
                    maxLine: 6,
                  ),
                  const SizedBox(height: 20),
                  CustomTextField(
                    controller: TextEditingController(),
                    text: 'شعار تبلیغاتی',
                  ),
                  const SizedBox(height: 20),
                  CustomTextField(
                    controller: TextEditingController(),
                    text: 'شماره تماس',
                  ),
                  const SizedBox(height: 20),
                  CustomTextField(
                    controller: TextEditingController(),
                    text: 'شماره همراه',
                  ),
                  const SizedBox(height: 20),
                  CustomTextField(
                    controller: TextEditingController(),
                    text: 'ایمیل',
                  ),
                  const SizedBox(height: 20),
                  CustomTextField(
                    controller: TextEditingController(),
                    text: 'سایت',
                  ),
                  const SizedBox(height: 20),
                  CustomTextField(
                    controller: TextEditingController(),
                    text: 'تلگرام',
                  ),
                  const SizedBox(height: 20),
                  CustomTextField(
                    controller: TextEditingController(),
                    text: 'اینستاگرام',
                  ),
                  const SizedBox(height: 20),
                  CustomTextField(
                    controller: TextEditingController(),
                    text: 'کشور',
                  ),
                  const SizedBox(height: 20),
                  CustomTextField(
                    controller: TextEditingController(),
                    text: 'استان',
                  ),
                  const SizedBox(height: 20),
                  CustomTextField(
                    controller: TextEditingController(),
                    text: 'شهر',
                  ),
                  const SizedBox(height: 20),
                  CustomTextField(
                    controller: TextEditingController(),
                    text: 'آدرس',
                    maxLine: 4,
                  ),
                  const SizedBox(height: 20),
                  CustomTextField(
                    controller: TextEditingController(),
                    text: 'کد پستی',
                  ),
                  const SizedBox(height: 20),
                  Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 7, horizontal: 7),
                    height: 220,
                    child: const Center(
                      child: LocationPicker(), //Text("map"),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomButton(
                        onPress: () {},
                        text: 'تنظیمات رنگ',
                        width: 150,
                        color: Colors.white,
                        textColor: Colora.primaryColor,
                      ),
                      CustomButton(
                        onPress: () {},
                        text: 'ثبت',
                        width: 150,
                        color: Colors.white,
                        textColor: Colora.primaryColor,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      // ... rest of the code
    );
  }
}
