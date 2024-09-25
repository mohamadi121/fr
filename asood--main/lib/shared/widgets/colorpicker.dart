import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

import '../constants/constants.dart';
// import 'custom_button_widget.dart';

class AColorPicker extends StatelessWidget {
  const AColorPicker({
    super.key,
    required this.titleWidget,
    this.paletteType = PaletteType.hsvWithHue,
  });

  final Widget titleWidget;
  final PaletteType paletteType;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Dimensions.seven),
      height: Dimensions.height * .33,
      decoration: BoxDecoration(
          color: Colora.lightBlue,
          borderRadius: BorderRadius.circular(Dimensions.fifteen)),
      child: Column(children: [
        titleWidget,
        Dimensions.seven.height,
        Container(
          padding: const EdgeInsets.only(top: Dimensions.ten),
          decoration: BoxDecoration(
              color: Colora.primaryColor,
              borderRadius: BorderRadius.circular(Dimensions.fifteen)),
          child: ColorPicker(
            paletteType: paletteType,
            hexInputBar: false,
            colorPickerWidth: Dimensions.width * .7,
            pickerAreaBorderRadius: BorderRadius.circular(Dimensions.fifteen),
            onColorChanged: (Color color) {},
            displayThumbColor: false,
            portraitOnly: false,
            // showLabel: false,
            enableAlpha: false,
            labelTypes: const [],
            pickerAreaHeightPercent: .5,
            pickerColor: Colors.white,
          ),
        ),
      ]),
    );
  }
}
