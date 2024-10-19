import 'package:flutter/material.dart';

import '../constants/constants.dart';
// import 'custom_textfield_widget.dart';
import 'timeline_textfield.dart';

class TimeLineCard extends StatelessWidget {
  TimeLineCard({super.key});

  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Dimensions.fifteen),
      decoration: BoxDecoration(
          color: Colora.scaffold,
          borderRadius: BorderRadius.circular(Dimensions.twenty)),
      child: Column(children: [
        TimeLine(
          textEditingController: textEditingController,
          text: 'شنبه',
        ),
        const Divider(
          color: Colora.primaryColor,
        ),
        TimeLine(
          textEditingController: textEditingController,
          text: 'یکشنبه',
        ),
        const Divider(
          color: Colora.primaryColor,
        ),
        TimeLine(
          textEditingController: textEditingController,
          text: 'دوشنبه',
        ),
        const Divider(
          color: Colora.primaryColor,
        ),
        TimeLine(
          textEditingController: textEditingController,
          text: 'سه شنبه',
        ),
        const Divider(
          color: Colora.primaryColor,
        ),
        TimeLine(
          textEditingController: textEditingController,
          text: 'چهارشنبه',
        ),
        const Divider(
          color: Colora.primaryColor,
        ),
        TimeLine(
          textEditingController: textEditingController,
          text: 'پنجشنبه',
        ),
        const Divider(
          color: Colora.primaryColor,
        ),
        TimeLine(
          textEditingController: textEditingController,
          text: 'جمعه',
        ),
      ]),
    );
  }
}

class TimeLine extends StatelessWidget {
  const TimeLine({
    super.key,
    required this.textEditingController,
    required this.text,
  });

  final TextEditingController textEditingController;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: ATextStyle.unSelectedBtn.copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: Dimensions.height / 21,
          width: Dimensions.width / 2.5,
          child: TimeLineTextFiled(
            controller: textEditingController,
            text: 'از ساعت   -    تا ساعت ',
            color: Colora.primaryColor,
          ),
        ),
      ],
    );
  }
}
