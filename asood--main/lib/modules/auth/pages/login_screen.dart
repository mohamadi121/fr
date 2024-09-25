// ignore_for_file: deprecated_member_use, avoid_print, unnecessary_import

import 'package:asood/shared/utils/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../blocs/login_bloc/login_bloc.dart';
import '../../../shared/constants/constants.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController controller = TextEditingController();
  static const routeName = '/loginScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            'assets/images/ba_logo.png',
            fit: BoxFit.cover,
          ),
          BlocConsumer<LoginBloc, LoginState>(
            listener: (context, state) {
              if (state.status == Loginstatus.success &&
                  state.termStatus == true) {
                /*     Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const OtpScreen()),
                ); */
                context.router.replace(const OtpRoute());
              }
              if (state.status == Loginstatus.error) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("کد ارسال نشد"),
                  ),
                );
                print(state.error);
              }
            },
            builder: (context, state) {
              ///دقت کن این بیلدر پایینی رو اضافه گذاشتم
              ///نذاشتنی خطا میده وو تو خطا توضیح داده یه سری چیزا بعد دیدم بیلدر گذاشتم طبق توضیح درست شد
              ///اما اصولا نباید اینطور باشه دنبال راه حل بهتر میگردم براش
              return Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 145),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      //checkbox
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            margin: const EdgeInsets.only(left: 5),
                            child: Transform.scale(
                              scale: 1.3,
                              child: Checkbox(
                                activeColor: Colora.scaffold,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)
                                ),
                                checkColor: Colora.primaryColor,
                                side: const BorderSide(color: Colora.scaffold),
                                value: state.termStatus,
                                onChanged: (value) {
                                  BlocProvider.of<LoginBloc>(context).add(
                                    ToggleTermsCheckboxEvent(isClicked: value!),
                                  );
                                }),
                            ),
                          ), // Replace with your checkbox logic
                          const Row(
                            children: [
                              Text(
                                'توافق نامه کاربری',
                                style: TextStyle(
                                    color: Colora.lightBlue,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                ' را خوانده قبول دارم',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      ),

                      const SizedBox(height: 10),

                      Directionality(
                        textDirection: TextDirection.ltr,
                        child: Container(
                          padding: const EdgeInsets.only(right: 10, left: 20, top: 10),
                          height: 50,
                          width: Dimensions.width * .8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white,
                          ),
                          child: IntlPhoneField(
                            textAlign: TextAlign.start,
                            controller: controller,
                            searchText: "جستجو کشور",
                            languageCode: 'fa',
                            decoration: const InputDecoration(
                              counter: Offstage(),
                              hintTextDirection: TextDirection.rtl,
                              contentPadding: EdgeInsets.only(top: 4),
                              hintText: 'شماره تلفن:',

                              hintStyle: TextStyle(color: Colora.lightBlue),
                              hintFadeDuration: Duration.zero,
                              alignLabelWithHint: true,
                              // labelStyle: TextStyle(color: Colors.black),
                              border: InputBorder.none,
                              errorText: null,
                            ),
                            initialCountryCode: 'IR',
                            showCountryFlag: true,
                            autovalidateMode: AutovalidateMode.disabled,
                            dropdownIconPosition: IconPosition.trailing,
                            onChanged: (phone) {
                              print(phone.completeNumber);
                            },
                          ),
                        ),
                      ),

                      const SizedBox(height: 8),

                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromARGB(255, 255, 255, 255)),
                        ),
                        onPressed: () {
                          String phone = "0${controller.text}";
                          state.termStatus == true
                              ? context.read<LoginBloc>().add(SendOtp(
                                    phone: phone,
                                  ))
                              : ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                        "بدون پذیرفتن قوانین و مقررات امکان استفاده از آسود نمیباشد!"),
                                  ),
                                );
                        },
                        child: state.status == Loginstatus.loading
                            ? const CircularProgressIndicator()
                            : const Text(
                                "ارسال کد تایید",
                                style: TextStyle(
                                    color: Colora.primaryColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0),
                              ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
