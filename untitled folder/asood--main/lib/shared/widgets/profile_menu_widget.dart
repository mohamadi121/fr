import 'package:flutter/material.dart';

import 'custom_textfield.dart';
import 'custom_button.dart';

class ProfileDialog extends StatelessWidget {
  const ProfileDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("پروفایل"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Add your login form here
          // For example, you can use TextFormField for username and password
          // with a login button.
          Column(
            children: [
              CustomTextField(
                controller: TextEditingController(),
                text: "نام کاربری",
              ),
              const SizedBox(height: 10),
              CustomTextField(
                controller: TextEditingController(),
                text: "کلمه عبور",
              ),
              const SizedBox(height: 10),
              CustomButton(onPress: () {}, text: "ورود"),
            ],
          ),
          // Add a SizedBox or Divider for separation
          const SizedBox(height: 10),

          // Forgot Password Button
          ElevatedButton(
            onPressed: () {
              // Add logic to handle forgot password
            },
            child: const Text("رمز عبور خود را فراموش کرده‌اید؟"),
          ),

          // Signup Button
          ElevatedButton(
            onPressed: () {
              // Add logic to handle signup
            },
            child: const Text("عضویت"),
          ),
        ],
      ),
    );
  }
}

void showProfileDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return const ProfileDialog();
    },
  );
}
