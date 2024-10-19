import 'package:asood/shared/widgets/custom_textfield.dart';
import 'package:asood/shared/widgets/search_box.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../shared/widgets/custom_button.dart';
import '../../../shared/widgets/radio_button.dart';
import '../../../shared/widgets/default_appbar.dart';
import '../../../shared/widgets/simple_bot_navbar.dart';
@RoutePage()
class PanelConfigScreen extends StatefulWidget {
  const PanelConfigScreen({super.key});

  @override
  State<PanelConfigScreen> createState() => _PanelConfigScreenState();
}

class _PanelConfigScreenState extends State<PanelConfigScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(context: context),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                const SelectPanel(),
                const SizedBox(height: 20),
                const SendBulkMessage(),
                const SizedBox(height: 20),
                const SelectContacts(),
                const SizedBox(height: 20),
                const SetMessage(),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                        width: 150,
                        margin: const EdgeInsets.all(10.0),
                        child: CustomButton(
                          onPress: () {},
                          text: "ذخیره",
                        ))
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

class SelectPanel extends StatefulWidget {
  const SelectPanel({super.key});

  @override
  State<SelectPanel> createState() => _SelectPanelState();
}

class _SelectPanelState extends State<SelectPanel> {
  String _groupValue = 'initialValue';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.indigo[400],
      ),
      child: Column(
        children: [
          const Center(
            child: Text(
              'انتخاب پنل',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Divider(
            thickness: 1,
            color: Colors.white,
          ),
          const SizedBox(height: 20),
          const Text(
            'شما می‌توانید پنل مورد نیاز جهت ارسال پیام را انتخاب کنید:',
            style: TextStyle(color: Colors.white),
          ),
          selectPanelType(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton(
                onPress: () {},
                text: 'انتخاب',
                width: 100,
              ),
              CustomButton(
                onPress: () {},
                text: 'انصراف',
                width: 100,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container selectPanelType() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.indigo[300],
      ),
      margin: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          radioButton(
            title: 'پنل آسود',
            groupValue: _groupValue,
            value: 'firstOption',
            onChanged: (value) =>
                setState(() => _groupValue = value ?? _groupValue),
          ),
          radioButton(
            title: 'پنل شخصی',
            groupValue: _groupValue,
            value: 'secondOption',
            onChanged: (value) =>
                setState(() => _groupValue = value ?? _groupValue),
          ),
        ],
      ),
    );
  }
}

class SendBulkMessage extends StatelessWidget {
  const SendBulkMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.indigo[600],
      ),
      child: Column(
        children: [
          const Text(
            'شما می‌توانید در اینجا پیام انبوه برای گروهی خاص یا مخاطبین خود ارسال نمایید:',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton(
                onPress: () {},
                width: 150,
                text: 'ارسال از اکسل',
              ),
              CustomButton(
                onPress: () {},
                width: 150,
                text: 'ارسال به مخاطبین',
              )
            ],
          ),
          const SizedBox(height: 20),
          const Text(
              'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد ',
              style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}

class SelectContacts extends StatefulWidget {
  const SelectContacts({Key? key}) : super(key: key);

  @override
  State<SelectContacts> createState() => _SelectContactsState();
}

class _SelectContactsState extends State<SelectContacts> {
  List<String> contacts = [
    'مخاطب نمونه ۱',
    'مخاطب نمونه ۲',
    'مخاطب نمونه ۳',
    'مخاطب نمونه ۴',
  ];

  List<bool> _isChecked = [];

  @override
  void initState() {
    super.initState();
    // Initialize all checkboxes to false initially
    _isChecked = List<bool>.filled(contacts.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.indigo[800],
      ),
      child: Column(
        children: [
          const SearchBoxWidget(),
          const SizedBox(height: 20),
          ListView.builder(
            shrinkWrap: true,
            itemCount: contacts.length,
            itemBuilder: (context, index) {
              return CheckboxListTile(
                title: Text(
                  contacts[index],
                  style: const TextStyle(color: Colors.white),
                ),
                value: _isChecked[index],
                onChanged: (bool? value) {
                  setState(() {
                    _isChecked[index] = value!;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
              );
            },
          ),
        ],
      ),
    );
  }
}

class SetMessage extends StatelessWidget {
  const SetMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.indigo[700],
      ),
      child: Column(
        children: [
          const Center(
            child: Text(
              'متن پیام',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Divider(
            thickness: 1,
            color: Colors.white,
          ),
          const Text(
            'لطفا متن پیام خود را در این قسمت وارد نمایید:',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          CustomTextField(
            controller: TextEditingController(),
            text: 'متن پیام',
            maxLine: 8,
          ),
          const SizedBox(height: 10),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            CustomButton(
              onPress: () {},
              width: 150,
              text: 'انصراف',
            ),
            CustomButton(
              onPress: () {},
              width: 150,
              text: 'تایید',
            ),
          ]),
        ],
      ),
    );
  }
}
