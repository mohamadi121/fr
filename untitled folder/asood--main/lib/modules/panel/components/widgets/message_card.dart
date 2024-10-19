// ignore_for_file: avoid_unnecessary_containers

import 'package:asood/shared/constants/constants.dart';
import 'package:asood/shared/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class MessageCardWidget extends StatelessWidget {
  const MessageCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.indigo[500],
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('پنل آسود', style: TextStyle(color: Colors.white)),
                    SizedBox(width: 10),
                    Text('۱۴۰۲/۰۱/۰۱', style: TextStyle(color: Colors.white)),
                  ],
                ),
                Divider(
                  thickness: 1,
                  color: Colora.primaryColor,
                ),
                Text('عنوان پیام', style: TextStyle(color: Colors.white)),
                SizedBox(height: 10),
                Text('وضعیت: در حال بررسی',
                    style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                CustomButton(
                  onPress: () {},
                  text: 'ویرایش',
                  width: 100,
                ),
                const SizedBox(height: 20),
                CustomButton(
                  onPress: () {},
                  text: 'ارسال',
                  width: 100,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
