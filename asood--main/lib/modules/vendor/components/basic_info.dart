// ignore_for_file: unnecessary_import, sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/create_workspace/create_workspace_bloc.dart';
import '../../../shared/constants/constants.dart';
import '../../../shared/utils/snack_bar_util.dart';
import '../../../shared/widgets/custom_button.dart';
import '../../../shared/widgets/custom_textfield.dart';
import '../../../shared/widgets/radio_button.dart';
import '../../../shared/widgets/simple_title.dart';

class BasicInfo extends StatefulWidget {
  const BasicInfo({required this.bloc, super.key});

  final CreateWorkSpaceBloc bloc;

  @override
  State<BasicInfo> createState() => _BasicInfoState();
}

class _BasicInfoState extends State<BasicInfo> {
  String selectedValue = '';
  final TextEditingController name = TextEditingController();
  final TextEditingController businessId = TextEditingController();
  final TextEditingController description = TextEditingController();
  final TextEditingController slogan = TextEditingController();
  final TextEditingController idCode = TextEditingController();

  @override
  void initState() {
    super.initState();
    name.text = widget.bloc.state.name;
    businessId.text = widget.bloc.state.businessId;
    description.text = widget.bloc.state.description;
    slogan.text = widget.bloc.state.slogan;
    selectedValue = widget.bloc.state.marketType;
    //idCode.text =  widget.bloc.state.idCode;
  }

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<CreateWorkSpaceBloc>(context);

    return SizedBox(
      height: Dimensions.height,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Image.asset(
                'assets/images/tools-that-you-should-have.jpg',
                fit: BoxFit.cover,
              ),
              height: 200,
              width: Dimensions.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.blue),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              width: Dimensions.width,
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
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
                        value: "shop",
                        groupValue: selectedValue,
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value!;
                          });
                        },
                      ),
                      radioButton(
                        title: "شرکتی",
                        value: "company",
                        groupValue: selectedValue,
                        onChanged: (value) {
                          //set market type
                          bloc.add(SetMarketType(marketType: value!));
                          setState(() {
                            selectedValue = value;
                          });
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 7),
                  CustomTextField(
                      controller: businessId,
                      isRequired: true,
                      text: "شناسه کسب و کار"),
                  const SizedBox(height: 7),
                  CustomTextField(
                      isRequired: true,
                      controller: name,
                      text: "نام کسب و کار"),
                  const SizedBox(height: 7),
                  CustomTextField(
                    isRequired: true,
                    controller: description,
                    text: "توضیحات",
                    maxLine: 6,
                  ),
                  const SizedBox(height: 7),
                  CustomTextField(
                      isRequired: true,
                      controller: slogan,
                      text: "شعار تبلیغاتی"),
                  const SizedBox(height: 7),
                  CustomTextField(
                      isRequired: true, controller: idCode, text: "کد ملی"),
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
                          onPress: () {
                            if (businessId.text.isNotEmpty &&
                                name.text.isNotEmpty &&
                                description.text.isNotEmpty &&
                                slogan.text.isNotEmpty &&
                                idCode.text.isNotEmpty) {
                              bloc.add(CreateMarket(
                                businessId: businessId.text,
                                name: name.text,
                                description: description.text,
                                slogan: slogan.text,
                                marketType: selectedValue,
                                subCategory: 1,
                              ));
                              bloc.add(const ChangeTabView(activeTabIndex: 1));
                            } else {
                              showSnackBar(context,
                                  "لطفا تمامی فیلد های لازم را پر نمایید.");
                            }
                          },
                          text: BlocProvider.of<CreateWorkSpaceBloc>(context)
                                      .state
                                      .status ==
                                  CWSStatus.loading
                              ? null
                              : "بعدی",
                          color: Colors.white,
                          textColor: Colora.primaryColor,
                          height: 40,
                          width: 100,
                          btnWidget:
                              BlocProvider.of<CreateWorkSpaceBloc>(context)
                                          .state
                                          .status ==
                                      CWSStatus.loading
                                  ? const Center(
                                      child: SizedBox(
                                        height: 25,
                                        width: 25,
                                        child: CircularProgressIndicator(),
                                      ),
                                    )
                                  : null),
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
