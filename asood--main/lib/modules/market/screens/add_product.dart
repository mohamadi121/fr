import 'package:asood/shared/constants/constants.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../shared/widgets/custom_textfield.dart';
import '../../../shared/widgets/default_appbar.dart';

@RoutePage()
class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {

  final TextEditingController name = TextEditingController();
  final TextEditingController description = TextEditingController();
  final TextEditingController tagSearch = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colora.primaryColor,
      child: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [

              SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.width * 0.05),
                  child: Column(
                    children: [

                      SizedBox(
                        height: Dimensions.height * 0.13,
                      ),

                      // select product or service
                      Container(
                        height: Dimensions.height * 0.06,
                        decoration: BoxDecoration(
                          color: Colora.primaryColor,
                          borderRadius: BorderRadius.circular(30)
                        ),
                        margin: EdgeInsets.symmetric(
                            horizontal: Dimensions.width * 0.1
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: Dimensions.width * 0.05
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Text(
                                'کالا و محصول',
                                style: TextStyle(
                                    color: Colora.scaffold,
                                    fontSize: Dimensions.width * 0.035
                                ),
                              ),
                            ),
                            Expanded(
                              child: RadioListTile(
                                visualDensity: const VisualDensity(
                                  horizontal: VisualDensity.minimumDensity,
                                  vertical: VisualDensity.minimumDensity,
                                ),
                                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                controlAffinity: ListTileControlAffinity.trailing,

                                contentPadding: EdgeInsets.zero,
                                dense: true,
                                fillColor:const WidgetStatePropertyAll(Colora.scaffold),

                                value: 1, // Assign a value of 1 to this option
                                groupValue:
                                '_selectedValue', // Use _selectedValue to track the selected option
                                onChanged: (value) {
                                  setState(() {
                                    // _selectedValue = value!; // Update _selectedValue when option 1 is selected
                                  });
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Text(
                                'خدمات',
                                style: TextStyle(
                                    color: Colora.scaffold,
                                    fontSize: Dimensions.width * 0.035
                                ),
                              ),
                            ),
                            Expanded(
                              child: RadioListTile(
                                controlAffinity: ListTileControlAffinity.trailing,
                                contentPadding: EdgeInsets.zero,
                                dense: false,
                                visualDensity: const VisualDensity(
                                  horizontal: VisualDensity.minimumDensity,
                                  vertical: VisualDensity.minimumDensity,
                                ),
                                fillColor:const WidgetStatePropertyAll(Colora.scaffold),

                                value: 1, // Assign a value of 1 to this option
                                groupValue:
                                '_selectedValue', // Use _selectedValue to track the selected option
                                onChanged: (value) {
                                  setState(() {
                                    // _selectedValue = value!; // Update _selectedValue when option 1 is selected
                                  });
                                },
                              ),
                            ),

                          ],
                        ),
                      ),

                      Container(
                        height: Dimensions.height * 0.07,
                        decoration: BoxDecoration(
                          color: Colora.lightBlue,
                          borderRadius: BorderRadius.circular(30)
                        ),
                        margin: EdgeInsets.symmetric(
                          vertical: Dimensions.height * 0.02
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: Dimensions.width * 0.05
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            SizedBox(
                              width: Dimensions.width * 0.4,
                              child: CheckboxListTile(
                                title: Padding(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      'نمایش در نیازمندی',
                                      style: TextStyle(
                                          color: Colora.scaffold,
                                          fontSize: Dimensions.width * 0.035
                                      ),
                                    ),
                                  ),
                                ),
                                value: false,
                                onChanged: (newValue) {
                                  setState(() {
                                    // checkedValue = newValue;
                                  });
                                },
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                side: const BorderSide(
                                  color: Colora.scaffold
                                ),
                                fillColor: const WidgetStatePropertyAll(Colora.scaffold),
                                activeColor: Colora.scaffold,
                                checkColor: Colora.primaryColor,
                                contentPadding: EdgeInsets.zero,
                              )
                            ),

                            SizedBox(
                              width: Dimensions.width * 0.4,
                                child: CheckboxListTile(
                                  title: Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Text(
                                        'نیاز به بازاریابی ویژه',
                                        style: TextStyle(
                                            color: Colora.scaffold,
                                            fontSize: Dimensions.width * 0.035
                                        ),
                                      ),
                                    ),
                                  ),
                                  value: false,
                                  onChanged: (newValue) {
                                    setState(() {
                                      // checkedValue = newValue;
                                    });
                                  },
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  side: const BorderSide(
                                      color: Colora.scaffold
                                  ),
                                  activeColor: Colora.scaffold,
                                  fillColor: const WidgetStatePropertyAll(Colora.scaffold),
                                  checkColor: Colora.primaryColor,
                                  contentPadding: EdgeInsets.zero,
                                )
                            ),

                          ],
                        ),
                      ),

                      Container(
                        width: Dimensions.width,
                        margin: EdgeInsets.only(
                          bottom: Dimensions.height * 0.03
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: Dimensions.height * 0.03,
                          horizontal: Dimensions.width * 0.01
                        ),
                        decoration: BoxDecoration(
                          color: Colora.primaryColor,
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: Column(
                          children: [

                            CustomTextField(
                              controller: name,
                              isRequired: true,
                              text: "نام کالا"
                            ),

                            SizedBox(
                              height: Dimensions.height * 0.01,
                            ),

                            CustomTextField(
                              isRequired: true,
                              controller: description,
                              text: "توضیحات کالا",
                              maxLine: 6,
                            ),

                            SizedBox(
                              height: Dimensions.height * 0.01,
                            ),

                            CustomTextField(
                              isRequired: true,
                              controller: description,
                              text: "مشخصات فنی کالا",
                              maxLine: 6,
                            ),

                            SizedBox(
                              height: Dimensions.height * 0.01,
                            ),

                            //category
                            Container(
                              width: Dimensions.width,
                              margin: EdgeInsets.symmetric(
                                horizontal: Dimensions.width * 0.02
                              ),
                              decoration: BoxDecoration(
                                color: Colora.scaffold,
                                borderRadius: BorderRadius.circular(30)
                              ),
                              child: MaterialButton(
                                onPressed: (){},
                                child: Text(
                                  'انتخاب دسته بندی',
                                  style: TextStyle(
                                    color: Colora.primaryColor,
                                    fontSize: Dimensions.width * 0.034,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(
                              height: Dimensions.height * 0.01,
                            ),

                            //tag
                            Container(
                              width: Dimensions.width,
                              margin: EdgeInsets.symmetric(
                                  horizontal: Dimensions.width * 0.02
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: Dimensions.width * 0.06
                              ),
                              decoration: BoxDecoration(
                                  color: Colora.scaffold,
                                  borderRadius: BorderRadius.circular(30)
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: TextField(

                                          controller: tagSearch,

                                          decoration: const InputDecoration(
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(color: Colora.primaryColor, width: 1),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(color: Colora.primaryColor, width: 2),
                                            ),
                                          ),
                                        )
                                      ),

                                      Container(
                                        margin: EdgeInsets.symmetric(
                                          vertical: Dimensions.height * 0.01
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colora.primaryColor,
                                          borderRadius: BorderRadius.circular(30)
                                        ),
                                        padding: EdgeInsets.symmetric(
                                          vertical: Dimensions.height * 0.01,
                                          horizontal: Dimensions.width * 0.03
                                        ),
                                        child: InkWell(
                                          onTap: (){},
                                          child: FittedBox(
                                            fit: BoxFit.scaleDown,
                                            child: Text(
                                              'افزودن به کلمات',
                                              style: TextStyle(
                                                color: Colora.scaffold,
                                                fontSize: Dimensions.width * 0.033
                                              ),
                                            ),
                                          )
                                        ),
                                      )
                                    ],
                                  ),

                                  SizedBox(
                                    height: Dimensions.height * 0.06,
                                    child: ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: 4,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) => Container(
                                        margin: EdgeInsets.symmetric(
                                          vertical: Dimensions.height * 0.01,
                                          horizontal: Dimensions.width * 0.01
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colora.primaryColor,
                                          borderRadius: BorderRadius.circular(30)
                                        ),
                                        child: MaterialButton(
                                          onPressed: (){},
                                          child: Text(
                                            'کلمه کلیدی',
                                            style: TextStyle(
                                              color: Colora.scaffold,
                                              fontSize: Dimensions.width * 0.03
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  )

                                ],
                              )
                            ),

                            SizedBox(
                              height: Dimensions.height * 0.01,
                            ),

                            //count
                            Container(
                                width: Dimensions.width,
                                margin: EdgeInsets.symmetric(
                                    horizontal: Dimensions.width * 0.02
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: Dimensions.width * 0.06
                                ),
                                decoration: BoxDecoration(
                                    color: Colora.scaffold,
                                    borderRadius: BorderRadius.circular(30)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    
                                    Text(
                                      'موجودی : ',
                                      style: TextStyle(
                                        color: Colora.primaryColor,
                                        fontSize: Dimensions.width * 0.035
                                      ),
                                    ),
                                    
                                    Container(
                                      width: Dimensions.width * 0.35,
                                        padding: EdgeInsets.only(
                                          bottom: Dimensions.height * 0.01
                                        ),
                                        child: TextField(

                                          controller: tagSearch,

                                          decoration: const InputDecoration(
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(color: Colora.primaryColor, width: 1),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(color: Colora.primaryColor, width: 2),
                                            ),
                                          ),
                                        )
                                    ),

                                    CupertinoSwitch(
                                      activeColor: Colora.primaryColor,
                                      value: false,
                                      onChanged: (value){

                                      },
                                    ),
                                  ],
                                )
                            ),

                            SizedBox(
                              height: Dimensions.height * 0.01,
                            ),

                            //price
                            Container(
                                width: Dimensions.width,
                                margin: EdgeInsets.symmetric(
                                    horizontal: Dimensions.width * 0.02
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: Dimensions.width * 0.06
                                ),
                                decoration: BoxDecoration(
                                    color: Colora.scaffold,
                                    borderRadius: BorderRadius.circular(30)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [

                                    Text(
                                      'قیمت فروش : ',
                                      style: TextStyle(
                                          color: Colora.primaryColor,
                                          fontSize: Dimensions.width * 0.035
                                      ),
                                    ),

                                    Container(
                                        width: Dimensions.width * 0.3,
                                        padding: EdgeInsets.only(
                                            bottom: Dimensions.height * 0.01
                                        ),
                                        child: TextField(

                                          controller: tagSearch,

                                          decoration: const InputDecoration(
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(color: Colora.primaryColor, width: 1),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(color: Colora.primaryColor, width: 2),
                                            ),
                                          ),
                                        )
                                    ),

                                    CupertinoSwitch(
                                      activeColor: Colora.primaryColor,
                                      value: false,
                                      onChanged: (value){

                                      },
                                    ),
                                  ],
                                )
                            ),

                            SizedBox(
                              height: Dimensions.height * 0.01,
                            ),

                            //discount
                            AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              width: Dimensions.width,
                              margin: EdgeInsets.symmetric(
                                  horizontal: Dimensions.width * 0.02
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: Dimensions.width * 0.03,
                                vertical: Dimensions.height * 0.01
                              ),
                              decoration: BoxDecoration(
                                color: Colora.lightBlue,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: Dimensions.width * 0.01
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colora.scaffold,
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [

                                        Padding(
                                          padding: EdgeInsets.only(right: Dimensions.width * 0.03),
                                          child: Text(
                                            'نوع تخفیف : ',
                                            style: TextStyle(
                                                color: Colora.primaryColor,
                                                fontSize: Dimensions.width * 0.035
                                            ),
                                          ),
                                        ),

                                        Container(
                                          width: Dimensions.width * 0.5,
                                          height: Dimensions.height * 0.05,
                                          margin: EdgeInsets.symmetric(
                                            vertical: Dimensions.height * 0.005
                                          ),
                                          padding: EdgeInsets.symmetric(
                                            horizontal: Dimensions.width * 0.04
                                          ),
                                          decoration: BoxDecoration(
                                            color: Colora.primaryColor,
                                            borderRadius: BorderRadius.circular(30)
                                          ),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'انتخاب نمایید',
                                                style: TextStyle(
                                                  color: Colora.scaffold,
                                                  fontSize: Dimensions.width * 0.03
                                                ),
                                              ),

                                              Icon(
                                                Icons.arrow_drop_down_rounded,
                                                color: Colora.scaffold,
                                                size: Dimensions.width * 0.06,
                                              )

                                            ],
                                          ),
                                        )

                                      ],
                                    ),
                                  ),

                                  // Container(
                                  //   height: Dimensions.height * 0.1,
                                  // )

                                ],
                              )
                            ),

                            SizedBox(
                              height: Dimensions.height * 0.01,
                            ),

                            //gift
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                //gift
                                Column(
                                  children: [
                                    Container(
                                      width: Dimensions.width * 0.4,
                                      height: Dimensions.height * 0.045,
                                      margin: EdgeInsets.symmetric(
                                          horizontal: Dimensions.width * 0.02
                                      ),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: Dimensions.width * 0.01
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colora.scaffold,
                                          borderRadius: BorderRadius.circular(30)
                                      ),
                                      alignment: Alignment.center,
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [

                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: Dimensions.width * 0.01
                                              ),
                                              child: Text(
                                                'کالای هدیه',
                                                style: TextStyle(
                                                    color: Colora.primaryColor,
                                                    fontSize: Dimensions.width * 0.035
                                                ),
                                              ),
                                            ),

                                            CupertinoSwitch(
                                              activeColor: Colora.primaryColor,
                                              value: false,
                                              onChanged: (value){

                                              },
                                            ),
                                          ],
                                        )
                                    ),
                                    SizedBox(height: Dimensions.height * 0.01,),
                                    Container(
                                      width: Dimensions.width * 0.4,
                                      height: Dimensions.height * 0.045,
                                      margin: EdgeInsets.symmetric(
                                          horizontal: Dimensions.width * 0.02
                                      ),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: Dimensions.width * 0.01
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colora.scaffold,
                                          borderRadius: BorderRadius.circular(30)
                                      ),
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: Dimensions.width * 0.01
                                        ),
                                        child: Text(
                                          'انتخاب هدیه',
                                          style: TextStyle(
                                              color: Colora.primaryColor,
                                              fontSize: Dimensions.width * 0.035
                                          ),
                                        ),
                                      )
                                    ),
                                    SizedBox(height: Dimensions.height * 0.01,),
                                    Container(
                                        width: Dimensions.width * 0.4,
                                        // height: Dimensions.height * 0.15,
                                        margin: EdgeInsets.symmetric(
                                            horizontal: Dimensions.width * 0.02
                                        ),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: Dimensions.width * 0.01
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colora.scaffold,
                                            borderRadius: BorderRadius.circular(20)
                                        ),
                                        alignment: Alignment.center,
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: Dimensions.width * 0.2,
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.symmetric(
                                                      horizontal: Dimensions.width * 0.01,
                                                      vertical: Dimensions.height * 0.005
                                                    ),
                                                    child: Text(
                                                      'کالای هدیه :',
                                                      style: TextStyle(
                                                          color: Colora.primaryColor,
                                                          fontSize: Dimensions.width * 0.03
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.symmetric(
                                                        horizontal: Dimensions.width * 0.01
                                                    ),
                                                    child: Text(
                                                      ' دریل شارژی',
                                                      maxLines: 4,
                                                      style: TextStyle(
                                                          color: Colora.primaryColor,
                                                          fontSize: Dimensions.width * 0.03
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: Dimensions.width * 0.16,
                                              margin: EdgeInsets.symmetric(
                                                vertical: Dimensions.height * 0.01
                                              ),
                                              child: AspectRatio(
                                                aspectRatio: 1,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(10),
                                                    border: Border.all(
                                                      color: Colora.primaryColor
                                                    )
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        )
                                    ),
                                  ],
                                ),

                                //added
                                Column(
                                  children: [
                                    Container(
                                        width: Dimensions.width * 0.4,
                                        height: Dimensions.height * 0.045,
                                        margin: EdgeInsets.symmetric(
                                            horizontal: Dimensions.width * 0.02
                                        ),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: Dimensions.width * 0.01
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colora.scaffold,
                                            borderRadius: BorderRadius.circular(30)
                                        ),
                                        alignment: Alignment.center,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [

                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: Dimensions.width * 0.01
                                              ),
                                              child: Text(
                                                'کالای همراه',
                                                style: TextStyle(
                                                    color: Colora.primaryColor,
                                                    fontSize: Dimensions.width * 0.035
                                                ),
                                              ),
                                            ),

                                            CupertinoSwitch(
                                              activeColor: Colora.primaryColor,
                                              value: false,
                                              onChanged: (value){

                                              },
                                            ),
                                          ],
                                        )
                                    ),
                                    SizedBox(height: Dimensions.height * 0.01,),
                                    Container(
                                        width: Dimensions.width * 0.4,
                                        height: Dimensions.height * 0.045,
                                        margin: EdgeInsets.symmetric(
                                            horizontal: Dimensions.width * 0.02
                                        ),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: Dimensions.width * 0.01
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colora.scaffold,
                                            borderRadius: BorderRadius.circular(30)
                                        ),
                                        alignment: Alignment.center,
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: Dimensions.width * 0.01
                                          ),
                                          child: Text(
                                            'انتخاب کالای همراه',
                                            style: TextStyle(
                                                color: Colora.primaryColor,
                                                fontSize: Dimensions.width * 0.035
                                            ),
                                          ),
                                        )
                                    ),
                                    SizedBox(height: Dimensions.height * 0.01,),
                                    Container(
                                      width: Dimensions.width * 0.4,
                                      // height: Dimensions.height * 0.15,
                                      margin: EdgeInsets.symmetric(
                                          horizontal: Dimensions.width * 0.02
                                      ),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: Dimensions.width * 0.01
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colora.scaffold,
                                          borderRadius: BorderRadius.circular(20)
                                      ),
                                      alignment: Alignment.center,
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: Dimensions.width * 0.2,
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: Dimensions.width * 0.01,
                                                      vertical: Dimensions.height * 0.005
                                                  ),
                                                  child: Text(
                                                    'کالای همراه :',
                                                    style: TextStyle(
                                                        color: Colora.primaryColor,
                                                        fontSize: Dimensions.width * 0.03
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: Dimensions.width * 0.01
                                                  ),
                                                  child: Text(
                                                    ' دریل شارژی',
                                                    maxLines: 4,
                                                    style: TextStyle(
                                                        color: Colora.primaryColor,
                                                        fontSize: Dimensions.width * 0.03
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: Dimensions.width * 0.16,
                                            margin: EdgeInsets.symmetric(
                                                vertical: Dimensions.height * 0.01
                                            ),
                                            child: AspectRatio(
                                              aspectRatio: 1,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(10),
                                                    border: Border.all(
                                                        color: Colora.primaryColor
                                                    )
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ),
                                  ],
                                )

                              ],
                            ),

                            SizedBox(
                              height: Dimensions.height * 0.01,
                            ),

                            //cond
                            Container(
                              width: Dimensions.width,
                              margin: EdgeInsets.symmetric(
                                  horizontal: Dimensions.width * 0.02
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: Dimensions.width * 0.06
                              ),
                              decoration: BoxDecoration(
                                  color: Colora.scaffold,
                                  borderRadius: BorderRadius.circular(30)
                              ),
                              child: Column(
                                children: [

                                  Container(
                                  alignment: Alignment.centerRight,
                                  margin: EdgeInsets.symmetric(
                                    vertical: Dimensions.height * 0.01
                                  ),
                                  child: Text(
                                    'برچسب‌ها : ',
                                    style: TextStyle(
                                      color: Colora.primaryColor,
                                      fontSize: Dimensions.width * 0.035
                                    ),
                                  ),
                                ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [

                                      Padding(
                                        padding: const EdgeInsets.only(top: 5.0),
                                        child: Text(
                                          'جدید',
                                          style: TextStyle(
                                              color: Colora.primaryColor,
                                              fontSize: Dimensions.width * 0.03
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Radio(
                                          visualDensity: const VisualDensity(
                                            horizontal: VisualDensity.minimumDensity,
                                            vertical: VisualDensity.minimumDensity,
                                          ),
                                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                          // controlAffinity: ListTileControlAffinity.trailing,
                                          //
                                          // contentPadding: EdgeInsets.zero,
                                          // dense: true,
                                          fillColor:const WidgetStatePropertyAll(Colora.primaryColor),

                                          value: 1, // Assign a value of 1 to this option
                                          groupValue:
                                          '_selectedValue', // Use _selectedValue to track the selected option
                                          onChanged: (value) {
                                            setState(() {
                                              // _selectedValue = value!; // Update _selectedValue when option 1 is selected
                                            });
                                          },
                                        ),
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.only(top: 5.0),
                                        child: Text(
                                          'پیشنهاد ویژه',
                                          style: TextStyle(
                                              color: Colora.primaryColor,
                                              fontSize: Dimensions.width * 0.03
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Radio(
                                          // controlAffinity: ListTileControlAffinity.trailing,
                                          // contentPadding: EdgeInsets.zero,
                                          // dense: false,
                                          visualDensity: const VisualDensity(
                                            horizontal: VisualDensity.minimumDensity,
                                            vertical: VisualDensity.minimumDensity,
                                          ),
                                          fillColor:const WidgetStatePropertyAll(Colora.primaryColor),

                                          value: 1, // Assign a value of 1 to this option
                                          groupValue:
                                          '_selectedValue', // Use _selectedValue to track the selected option
                                          onChanged: (value) {
                                            setState(() {
                                              // _selectedValue = value!; // Update _selectedValue when option 1 is selected
                                            });
                                          },
                                        ),
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.only(top: 5.0),
                                        child: Text(
                                          'بزودی',
                                          style: TextStyle(
                                              color: Colora.primaryColor,
                                              fontSize: Dimensions.width * 0.03
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Radio(
                                          visualDensity: const VisualDensity(
                                            horizontal: VisualDensity.minimumDensity,
                                            vertical: VisualDensity.minimumDensity,
                                          ),
                                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                          // controlAffinity: ListTileControlAffinity.trailing,
                                          //
                                          // contentPadding: EdgeInsets.zero,
                                          // dense: true,
                                          fillColor:const WidgetStatePropertyAll(Colora.primaryColor),

                                          value: 1, // Assign a value of 1 to this option
                                          groupValue:
                                          '_selectedValue', // Use _selectedValue to track the selected option
                                          onChanged: (value) {
                                            setState(() {
                                              // _selectedValue = value!; // Update _selectedValue when option 1 is selected
                                            });
                                          },
                                        ),
                                      ),
                                      
                                      Padding(
                                        padding: const EdgeInsets.only(top: 5.0),
                                        child: Text(
                                          'هیچ',
                                          style: TextStyle(
                                              color: Colora.primaryColor,
                                              fontSize: Dimensions.width * 0.03
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Radio(
                                          // controlAffinity: ListTileControlAffinity.trailing,
                                          // contentPadding: EdgeInsets.zero,
                                          // dense: false,
                                          visualDensity: const VisualDensity(
                                            horizontal: VisualDensity.minimumDensity,
                                            vertical: VisualDensity.minimumDensity,
                                          ),
                                          fillColor:const WidgetStatePropertyAll(Colora.primaryColor),

                                          value: 1, // Assign a value of 1 to this option
                                          groupValue:
                                          '_selectedValue', // Use _selectedValue to track the selected option
                                          onChanged: (value) {
                                            setState(() {
                                              // _selectedValue = value!; // Update _selectedValue when option 1 is selected
                                            });
                                          },
                                        ),
                                      ),

                                    ],
                                  ),

                                  Container(
                                    alignment: Alignment.centerRight,
                                    margin: EdgeInsets.symmetric(
                                        vertical: Dimensions.height * 0.01
                                    ),
                                    child: Text(
                                      'محل قرارگیری : ',
                                      style: TextStyle(
                                          color: Colora.primaryColor,
                                          fontSize: Dimensions.width * 0.035
                                      ),
                                    ),
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [

                                      Padding(
                                        padding: const EdgeInsets.only(top: 5.0),
                                        child: FittedBox(
                                          fit: BoxFit.scaleDown,
                                          child: Text(
                                            'چپ بالا',
                                            style: TextStyle(
                                                color: Colora.primaryColor,
                                                fontSize: Dimensions.width * 0.03
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Radio(
                                          visualDensity: const VisualDensity(
                                            horizontal: VisualDensity.minimumDensity,
                                            vertical: VisualDensity.minimumDensity,
                                          ),
                                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                          // controlAffinity: ListTileControlAffinity.trailing,
                                          //
                                          // contentPadding: EdgeInsets.zero,
                                          // dense: true,
                                          fillColor:const WidgetStatePropertyAll(Colora.primaryColor),

                                          value: 1, // Assign a value of 1 to this option
                                          groupValue:
                                          '_selectedValue', // Use _selectedValue to track the selected option
                                          onChanged: (value) {
                                            setState(() {
                                              // _selectedValue = value!; // Update _selectedValue when option 1 is selected
                                            });
                                          },
                                        ),
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.only(top: 5.0),
                                        child: FittedBox(
                                          fit: BoxFit.scaleDown,
                                          child: Text(
                                            'چپ پایین',
                                            style: TextStyle(
                                                color: Colora.primaryColor,
                                                fontSize: Dimensions.width * 0.03
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Radio(
                                          // controlAffinity: ListTileControlAffinity.trailing,
                                          // contentPadding: EdgeInsets.zero,
                                          // dense: false,
                                          visualDensity: const VisualDensity(
                                            horizontal: VisualDensity.minimumDensity,
                                            vertical: VisualDensity.minimumDensity,
                                          ),
                                          fillColor:const WidgetStatePropertyAll(Colora.primaryColor),

                                          value: 1, // Assign a value of 1 to this option
                                          groupValue:
                                          '_selectedValue', // Use _selectedValue to track the selected option
                                          onChanged: (value) {
                                            setState(() {
                                              // _selectedValue = value!; // Update _selectedValue when option 1 is selected
                                            });
                                          },
                                        ),
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.only(top: 5.0),
                                        child: FittedBox(
                                          fit: BoxFit.scaleDown,
                                          child: Text(
                                            'راست بالا',
                                            style: TextStyle(
                                                color: Colora.primaryColor,
                                                fontSize: Dimensions.width * 0.03
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Radio(
                                          visualDensity: const VisualDensity(
                                            horizontal: VisualDensity.minimumDensity,
                                            vertical: VisualDensity.minimumDensity,
                                          ),
                                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                          // controlAffinity: ListTileControlAffinity.trailing,
                                          //
                                          // contentPadding: EdgeInsets.zero,
                                          // dense: true,
                                          fillColor:const WidgetStatePropertyAll(Colora.primaryColor),

                                          value: 1, // Assign a value of 1 to this option
                                          groupValue:
                                          '_selectedValue', // Use _selectedValue to track the selected option
                                          onChanged: (value) {
                                            setState(() {
                                              // _selectedValue = value!; // Update _selectedValue when option 1 is selected
                                            });
                                          },
                                        ),
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.only(top: 5.0),
                                        child: FittedBox(
                                          fit: BoxFit.scaleDown,
                                          child: Text(
                                            'راست پایین',
                                            style: TextStyle(
                                                color: Colora.primaryColor,
                                                fontSize: Dimensions.width * 0.03
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Radio(
                                          // controlAffinity: ListTileControlAffinity.trailing,
                                          // contentPadding: EdgeInsets.zero,
                                          // dense: false,
                                          visualDensity: const VisualDensity(
                                            horizontal: VisualDensity.minimumDensity,
                                            vertical: VisualDensity.minimumDensity,
                                          ),
                                          fillColor:const WidgetStatePropertyAll(Colora.primaryColor),

                                          value: 1, // Assign a value of 1 to this option
                                          groupValue:
                                          '_selectedValue', // Use _selectedValue to track the selected option
                                          onChanged: (value) {
                                            setState(() {
                                              // _selectedValue = value!; // Update _selectedValue when option 1 is selected
                                            });
                                          },
                                        ),
                                      ),

                                    ],
                                  ),

                                ],
                              )
                            ),

                            SizedBox(
                              height: Dimensions.height * 0.01,
                            ),

                            //sale
                            Container(
                                width: Dimensions.width,
                                margin: EdgeInsets.symmetric(
                                    horizontal: Dimensions.width * 0.02
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: Dimensions.width * 0.06
                                ),
                                decoration: BoxDecoration(
                                    color: Colora.scaffold,
                                    borderRadius: BorderRadius.circular(30)
                                ),
                                child: Column(
                                  children: [

                                    Container(
                                      alignment: Alignment.centerRight,
                                      margin: EdgeInsets.symmetric(
                                          vertical: Dimensions.height * 0.01
                                      ),
                                      child: Text(
                                        'شیوه فروش : ',
                                        style: TextStyle(
                                            color: Colora.primaryColor,
                                            fontSize: Dimensions.width * 0.035
                                        ),
                                      ),
                                    ),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [

                                        Padding(
                                          padding: const EdgeInsets.only(top: 5.0),
                                          child: FittedBox(
                                            fit: BoxFit.scaleDown,
                                            child: Text(
                                              'فروش آنلاین',
                                              style: TextStyle(
                                                  color: Colora.primaryColor,
                                                  fontSize: Dimensions.width * 0.03
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Radio(
                                            visualDensity: const VisualDensity(
                                              horizontal: VisualDensity.minimumDensity,
                                              vertical: VisualDensity.minimumDensity,
                                            ),
                                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                            // controlAffinity: ListTileControlAffinity.trailing,
                                            //
                                            // contentPadding: EdgeInsets.zero,
                                            // dense: true,
                                            fillColor:const WidgetStatePropertyAll(Colora.primaryColor),

                                            value: 1, // Assign a value of 1 to this option
                                            groupValue:
                                            '_selectedValue', // Use _selectedValue to track the selected option
                                            onChanged: (value) {
                                              setState(() {
                                                // _selectedValue = value!; // Update _selectedValue when option 1 is selected
                                              });
                                            },
                                          ),
                                        ),

                                        Padding(
                                          padding: const EdgeInsets.only(top: 5.0),
                                          child: FittedBox(
                                            fit: BoxFit.scaleDown,
                                            child: Text(
                                              'فروش حضوری',
                                              style: TextStyle(
                                                  color: Colora.primaryColor,
                                                  fontSize: Dimensions.width * 0.03
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Radio(
                                            // controlAffinity: ListTileControlAffinity.trailing,
                                            // contentPadding: EdgeInsets.zero,
                                            // dense: false,
                                            visualDensity: const VisualDensity(
                                              horizontal: VisualDensity.minimumDensity,
                                              vertical: VisualDensity.minimumDensity,
                                            ),
                                            fillColor:const WidgetStatePropertyAll(Colora.primaryColor),

                                            value: 1, // Assign a value of 1 to this option
                                            groupValue:
                                            '_selectedValue', // Use _selectedValue to track the selected option
                                            onChanged: (value) {
                                              setState(() {
                                                // _selectedValue = value!; // Update _selectedValue when option 1 is selected
                                              });
                                            },
                                          ),
                                        ),

                                        Padding(
                                          padding: const EdgeInsets.only(top: 5.0),
                                          child: FittedBox(
                                            fit: BoxFit.scaleDown,
                                            child: Text(
                                              'هر دو',
                                              style: TextStyle(
                                                  color: Colora.primaryColor,
                                                  fontSize: Dimensions.width * 0.03
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Radio(
                                            visualDensity: const VisualDensity(
                                              horizontal: VisualDensity.minimumDensity,
                                              vertical: VisualDensity.minimumDensity,
                                            ),
                                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                            // controlAffinity: ListTileControlAffinity.trailing,
                                            //
                                            // contentPadding: EdgeInsets.zero,
                                            // dense: true,
                                            fillColor:const WidgetStatePropertyAll(Colora.primaryColor),

                                            value: 1, // Assign a value of 1 to this option
                                            groupValue:
                                            '_selectedValue', // Use _selectedValue to track the selected option
                                            onChanged: (value) {
                                              setState(() {
                                                // _selectedValue = value!; // Update _selectedValue when option 1 is selected
                                              });
                                            },
                                          ),
                                        ),

                                      ],
                                    ),

                                    Container(
                                      alignment: Alignment.centerRight,
                                      margin: EdgeInsets.symmetric(
                                          vertical: Dimensions.height * 0.01
                                      ),
                                      child: Text(
                                        'شیوه و هزینه ارسال مرسویه : ',
                                        style: TextStyle(
                                            color: Colora.primaryColor,
                                            fontSize: Dimensions.width * 0.035
                                        ),
                                      ),
                                    ),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [

                                        Padding(
                                          padding: const EdgeInsets.only(top: 5.0),
                                          child: FittedBox(
                                            fit: BoxFit.scaleDown,
                                            child: Text(
                                              'به عهده فروشگاه',
                                              style: TextStyle(
                                                  color: Colora.primaryColor,
                                                  fontSize: Dimensions.width * 0.03
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Radio(
                                            visualDensity: const VisualDensity(
                                              horizontal: VisualDensity.minimumDensity,
                                              vertical: VisualDensity.minimumDensity,
                                            ),
                                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                            // controlAffinity: ListTileControlAffinity.trailing,
                                            //
                                            // contentPadding: EdgeInsets.zero,
                                            // dense: true,
                                            fillColor:const WidgetStatePropertyAll(Colora.primaryColor),

                                            value: 1, // Assign a value of 1 to this option
                                            groupValue:
                                            '_selectedValue', // Use _selectedValue to track the selected option
                                            onChanged: (value) {
                                              setState(() {
                                                // _selectedValue = value!; // Update _selectedValue when option 1 is selected
                                              });
                                            },
                                          ),
                                        ),

                                        Padding(
                                          padding: const EdgeInsets.only(top: 5.0),
                                          child: FittedBox(
                                            fit: BoxFit.scaleDown,
                                            child: Text(
                                              'به عهده مشتری',
                                              style: TextStyle(
                                                  color: Colora.primaryColor,
                                                  fontSize: Dimensions.width * 0.03
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Radio(
                                            // controlAffinity: ListTileControlAffinity.trailing,
                                            // contentPadding: EdgeInsets.zero,
                                            // dense: false,
                                            visualDensity: const VisualDensity(
                                              horizontal: VisualDensity.minimumDensity,
                                              vertical: VisualDensity.minimumDensity,
                                            ),
                                            fillColor:const WidgetStatePropertyAll(Colora.primaryColor),

                                            value: 1, // Assign a value of 1 to this option
                                            groupValue:
                                            '_selectedValue', // Use _selectedValue to track the selected option
                                            onChanged: (value) {
                                              setState(() {
                                                // _selectedValue = value!; // Update _selectedValue when option 1 is selected
                                              });
                                            },
                                          ),
                                        ),

                                        Padding(
                                          padding: const EdgeInsets.only(top: 5.0),
                                          child: FittedBox(
                                            fit: BoxFit.scaleDown,
                                            child: Text(
                                              'رایگان',
                                              style: TextStyle(
                                                  color: Colora.primaryColor,
                                                  fontSize: Dimensions.width * 0.03
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Radio(
                                            visualDensity: const VisualDensity(
                                              horizontal: VisualDensity.minimumDensity,
                                              vertical: VisualDensity.minimumDensity,
                                            ),
                                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                            // controlAffinity: ListTileControlAffinity.trailing,
                                            //
                                            // contentPadding: EdgeInsets.zero,
                                            // dense: true,
                                            fillColor:const WidgetStatePropertyAll(Colora.primaryColor),

                                            value: 1, // Assign a value of 1 to this option
                                            groupValue:
                                            '_selectedValue', // Use _selectedValue to track the selected option
                                            onChanged: (value) {
                                              setState(() {
                                                // _selectedValue = value!; // Update _selectedValue when option 1 is selected
                                              });
                                            },
                                          ),
                                        ),

                                      ],
                                    ),

                                  ],
                                )
                            ),

                            SizedBox(
                              height: Dimensions.height * 0.01,
                            ),

                            //post price
                            AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              width: Dimensions.width,
                              margin: EdgeInsets.symmetric(
                                  horizontal: Dimensions.width * 0.02
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: Dimensions.width * 0.03,
                                  vertical: Dimensions.height * 0.01
                              ),
                              decoration: BoxDecoration(
                                color: Colora.lightBlue,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Column(
                                children: [

                                  //title
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: Dimensions.width * 0.01
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colora.scaffold,
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Container(
                                      height: Dimensions.height * 0.04,
                                      margin: EdgeInsets.symmetric(
                                          vertical: Dimensions.height * 0.001
                                      ),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: Dimensions.width * 0.04
                                      ),
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        'ثبت هزینه ارسال : ',
                                        style: TextStyle(
                                            color: Colora.primaryColor,
                                            fontSize: Dimensions.width * 0.035
                                        ),
                                      ),
                                    ),
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [

                                      SizedBox(
                                        width: Dimensions.width * 0.1,
                                        child: Checkbox(
                                          value: false,
                                          onChanged: (newValue) {
                                            setState(() {
                                              // checkedValue = newValue;
                                            });
                                          },
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(4),
                                          ),
                                          side: const BorderSide(
                                              color: Colora.scaffold
                                          ),
                                          fillColor: const WidgetStatePropertyAll(Colora.scaffold),
                                          activeColor: Colora.scaffold,
                                          checkColor: Colora.primaryColor,
                                          // contentPadding: EdgeInsets.zero,
                                        )
                                      ),

                                      Text(
                                        'ارسال با پست',
                                        style: TextStyle(
                                          color: Colora.scaffold,
                                          fontSize: Dimensions.width * 0.035
                                        ),
                                      ),

                                      Container(
                                          width: Dimensions.width * 0.35,
                                          height: Dimensions.height * 0.06,
                                          padding: EdgeInsets.symmetric(
                                            vertical: Dimensions.height * 0.01
                                          ),
                                          child: TextField(

                                            controller: tagSearch,

                                            keyboardType: TextInputType.number,

                                            decoration: const InputDecoration(
                                              filled: true,
                                              fillColor: Colora.scaffold,
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                                borderSide: BorderSide(color: Colora.scaffold, width: 1),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                                borderSide: BorderSide(color: Colora.scaffold, width: 2),
                                              ),
                                            ),
                                          )
                                      ),

                                      Text(
                                        'ریال',
                                        style: TextStyle(
                                            color: Colora.scaffold,
                                            fontSize: Dimensions.width * 0.035
                                        ),
                                      ),

                                    ],
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [

                                      SizedBox(
                                          width: Dimensions.width * 0.1,
                                          child: Checkbox(
                                            // title: Padding(
                                            //   padding: const EdgeInsets.only(top: 5.0),
                                            //   child: FittedBox(
                                            //     fit: BoxFit.scaleDown,
                                            //     child: Text(
                                            //       'نمایش در نیازمندی',
                                            //       style: TextStyle(
                                            //           color: Colora.scaffold,
                                            //           fontSize: Dimensions.width * 0.035
                                            //       ),
                                            //     ),
                                            //   ),
                                            // ),
                                            value: false,
                                            onChanged: (newValue) {
                                              setState(() {
                                                // checkedValue = newValue;
                                              });
                                            },
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(4),
                                            ),
                                            side: const BorderSide(
                                                color: Colora.scaffold
                                            ),
                                            fillColor: const WidgetStatePropertyAll(Colora.scaffold),
                                            activeColor: Colora.scaffold,
                                            checkColor: Colora.primaryColor,
                                            // contentPadding: EdgeInsets.zero,
                                          )
                                      ),

                                      Text(
                                        'ارسال با پیک',
                                        style: TextStyle(
                                            color: Colora.scaffold,
                                            fontSize: Dimensions.width * 0.035
                                        ),
                                      ),

                                      Container(
                                          width: Dimensions.width * 0.35,
                                          height: Dimensions.height * 0.06,
                                          padding: EdgeInsets.symmetric(
                                              vertical: Dimensions.height * 0.01
                                          ),
                                          child: TextField(

                                            controller: tagSearch,

                                            keyboardType: TextInputType.number,

                                            decoration: const InputDecoration(
                                              filled: true,
                                              fillColor: Colora.scaffold,
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                                borderSide: BorderSide(color: Colora.scaffold, width: 1),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                                borderSide: BorderSide(color: Colora.scaffold, width: 2),
                                              ),
                                            ),
                                          )
                                      ),

                                      Text(
                                        'ریال',
                                        style: TextStyle(
                                            color: Colora.scaffold,
                                            fontSize: Dimensions.width * 0.035
                                        ),
                                      ),

                                    ],
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [

                                      SizedBox(
                                          width: Dimensions.width * 0.1,
                                          child: Checkbox(
                                            value: false,
                                            onChanged: (newValue) {
                                              setState(() {
                                                // checkedValue = newValue;
                                              });
                                            },
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(4),
                                            ),
                                            side: const BorderSide(
                                                color: Colora.scaffold
                                            ),
                                            fillColor: const WidgetStatePropertyAll(Colora.scaffold),
                                            activeColor: Colora.scaffold,
                                            checkColor: Colora.primaryColor,
                                            // contentPadding: EdgeInsets.zero,
                                          )
                                      ),

                                      Text(
                                        'ارسال با باربری',
                                        style: TextStyle(
                                            color: Colora.scaffold,
                                            fontSize: Dimensions.width * 0.035
                                        ),
                                      ),

                                      Container(
                                          width: Dimensions.width * 0.35,
                                          height: Dimensions.height * 0.06,
                                          padding: EdgeInsets.symmetric(
                                              vertical: Dimensions.height * 0.01
                                          ),
                                          child: TextField(

                                            controller: tagSearch,

                                            keyboardType: TextInputType.number,

                                            decoration: const InputDecoration(
                                              filled: true,
                                              fillColor: Colora.scaffold,
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                                borderSide: BorderSide(color: Colora.scaffold, width: 1),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                                borderSide: BorderSide(color: Colora.scaffold, width: 2),
                                              ),
                                            ),
                                          )
                                      ),

                                      Text(
                                        'ریال',
                                        style: TextStyle(
                                            color: Colora.scaffold,
                                            fontSize: Dimensions.width * 0.035
                                        ),
                                      ),

                                    ],
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [

                                      SizedBox(
                                          width: Dimensions.width * 0.1,
                                          child: Checkbox(
                                            value: false,
                                            onChanged: (newValue) {
                                              setState(() {
                                                // checkedValue = newValue;
                                              });
                                            },
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(4),
                                            ),
                                            side: const BorderSide(
                                                color: Colora.scaffold
                                            ),
                                            fillColor: const WidgetStatePropertyAll(Colora.scaffold),
                                            activeColor: Colora.scaffold,
                                            checkColor: Colora.primaryColor,
                                            // contentPadding: EdgeInsets.zero,
                                          )
                                      ),

                                      Text(
                                        'ارسال با وانت بار',
                                        style: TextStyle(
                                            color: Colora.scaffold,
                                            fontSize: Dimensions.width * 0.035
                                        ),
                                      ),

                                      Container(
                                          width: Dimensions.width * 0.35,
                                          height: Dimensions.height * 0.06,
                                          padding: EdgeInsets.symmetric(
                                              vertical: Dimensions.height * 0.01
                                          ),
                                          child: TextField(

                                            controller: tagSearch,

                                            keyboardType: TextInputType.number,

                                            decoration: const InputDecoration(
                                              filled: true,
                                              fillColor: Colora.scaffold,
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                                borderSide: BorderSide(color: Colora.scaffold, width: 1),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                                borderSide: BorderSide(color: Colora.scaffold, width: 2),
                                              ),
                                            ),
                                          )
                                      ),

                                      Text(
                                        'ریال',
                                        style: TextStyle(
                                            color: Colora.scaffold,
                                            fontSize: Dimensions.width * 0.035
                                        ),
                                      ),

                                    ],
                                  ),

                                ],
                              )
                            ),

                            SizedBox(
                              height: Dimensions.height * 0.01,
                            ),

                            //pic
                            Container(
                                width: Dimensions.width,
                                margin: EdgeInsets.symmetric(
                                    horizontal: Dimensions.width * 0.02
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: Dimensions.width * 0.06
                                ),
                                decoration: BoxDecoration(
                                    color: Colora.scaffold,
                                    borderRadius: BorderRadius.circular(30)
                                ),
                                child: Column(
                                  children: [

                                    Container(
                                      alignment: Alignment.centerRight,
                                      margin: EdgeInsets.symmetric(
                                        vertical: Dimensions.height * 0.01
                                      ),
                                      child: Text(
                                        'تصویر محصول : ',
                                        style: TextStyle(
                                            color: Colora.primaryColor,
                                            fontSize: Dimensions.width * 0.035
                                        ),
                                      ),
                                    ),

                                    Container(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        'انتخاب عکس برای محصول باعث جذب مشتری می‌شود.',
                                        style: TextStyle(
                                            color: Colora.primaryColor,
                                            fontSize: Dimensions.width * 0.03
                                        ),
                                      ),
                                    ),

                                    //add image
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        width: Dimensions.width * 0.35,
                                        alignment: Alignment.center,
                                        margin: EdgeInsets.symmetric(
                                          vertical: Dimensions.height * 0.01
                                        ),
                                        padding: EdgeInsets.symmetric(
                                          vertical: Dimensions.height * 0.01,
                                          horizontal: Dimensions.width * 0.03
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colora.primaryColor,
                                          borderRadius: BorderRadius.circular(30)
                                        ),
                                        child: InkWell(
                                          onTap: (){},
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Icon(
                                                Icons.add_photo_alternate_rounded,
                                                color: Colora.scaffold,
                                                size: Dimensions.width * 0.06,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(top: 3.0),
                                                child: Text(
                                                  'افزودن عکس',
                                                  style: TextStyle(
                                                    fontSize: Dimensions.width * 0.033,
                                                    color: Colora.scaffold
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ),
                                    ),

                                    //images
                                    Container(
                                      width: Dimensions.width,
                                      height: Dimensions.height * 0.1,
                                      margin: EdgeInsets.symmetric(
                                        vertical: Dimensions.height * 0.01
                                      ),
                                      child: ListView.builder(
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        itemCount: 4,
                                        itemBuilder: (context, index) => Stack(
                                          children: [
                                            Container(
                                              width: Dimensions.width * 0.2,
                                              margin: EdgeInsets.symmetric(
                                                horizontal: Dimensions.width * 0.02
                                              ),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                border: Border.all(color: Colora.primaryColor)
                                              ),
                                            ),
                                            Positioned(
                                              bottom: 0,
                                              right: 0,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Colora.primaryColor,
                                                  border: Border.all(color: Colora.primaryColor),
                                                  shape: BoxShape.circle
                                                ),
                                                child: Icon(
                                                  Icons.delete_rounded,
                                                  color: Colors.redAccent,
                                                  size: Dimensions.width * 0.045,
                                                ),
                                              )
                                            )
                                          ],
                                        )
                                      )
                                    ),

                                  ],
                                )
                            ),

                            SizedBox(
                              height: Dimensions.height * 0.01,
                            ),

                            //publish or not
                            Container(
                              // height: Dimensions.height * 0.06,
                              decoration: BoxDecoration(
                                color: Colora.scaffold,
                                borderRadius: BorderRadius.circular(30)
                              ),
                              margin: EdgeInsets.symmetric(
                                horizontal: Dimensions.width * 0.1
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: Dimensions.width * 0.05
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Text(
                                      'منتشر شود',
                                      style: TextStyle(
                                        color: Colora.primaryColor,
                                        fontSize: Dimensions.width * 0.035
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: RadioListTile(
                                      visualDensity: const VisualDensity(
                                        horizontal: VisualDensity.minimumDensity,
                                        vertical: VisualDensity.minimumDensity,
                                      ),
                                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                      controlAffinity: ListTileControlAffinity.trailing,

                                      contentPadding: EdgeInsets.zero,
                                      dense: true,
                                      fillColor:const WidgetStatePropertyAll(Colora.primaryColor),

                                      value: 1, // Assign a value of 1 to this option
                                      groupValue:
                                      '_selectedValue', // Use _selectedValue to track the selected option
                                      onChanged: (value) {
                                        setState(() {
                                          // _selectedValue = value!; // Update _selectedValue when option 1 is selected
                                        });
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Text(
                                      'عدم انتشار',
                                      style: TextStyle(
                                          color: Colora.primaryColor,
                                          fontSize: Dimensions.width * 0.035
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: RadioListTile(
                                      controlAffinity: ListTileControlAffinity.trailing,
                                      contentPadding: EdgeInsets.zero,
                                      dense: false,
                                      visualDensity: const VisualDensity(
                                        horizontal: VisualDensity.minimumDensity,
                                        vertical: VisualDensity.minimumDensity,
                                      ),
                                      fillColor:const WidgetStatePropertyAll(Colora.primaryColor),

                                      value: 1, // Assign a value of 1 to this option
                                      groupValue:
                                      '_selectedValue', // Use _selectedValue to track the selected option
                                      onChanged: (value) {
                                        setState(() {
                                          // _selectedValue = value!; // Update _selectedValue when option 1 is selected
                                        });
                                      },
                                    ),
                                  ),

                                ],
                              ),
                            ),

                            SizedBox(
                              height: Dimensions.height * 0.02,
                            ),

                            //save
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                // height: Dimensions.height * 0.06,
                                decoration: BoxDecoration(
                                  color: Colora.scaffold,
                                  borderRadius: BorderRadius.circular(30)
                                ),
                                margin: EdgeInsets.symmetric(
                                  horizontal: Dimensions.width * 0.015
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: Dimensions.width * 0.05
                                ),
                                child: MaterialButton(
                                  onPressed: (){},
                                  child: Text(
                                    'ثبت اطلاعات',
                                    style: TextStyle(
                                      color: Colora.primaryColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: Dimensions.width * 0.036
                                    ),
                                  ),
                                )
                              ),
                            ),

                          ],
                        ),
                      )

                    ],
                  ),
                ),
              ),

              const NewAppBar(title: 'افزودن کالا و خدمات'),

            ],
          ),
        ),
      ),
    );
  }
}

