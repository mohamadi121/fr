import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

import '../../modules/vendor/blocs/vendor/vendor_bloc.dart';
import '../constants/constants.dart';
// import 'custom_button_widget.dart';

class AColorPicker extends StatefulWidget {
  const AColorPicker({
    super.key,
    required this.titleWidget,
    this.paletteType = PaletteType.hsvWithHue,
  });

  final Widget titleWidget;
  final PaletteType paletteType;

  @override
  State<AColorPicker> createState() => _AColorPickerState();
}

class _AColorPickerState extends State<AColorPicker> {

  late VendorBloc bloc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    bloc = BlocProvider.of<VendorBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Dimensions.seven),
      height: Dimensions.height * .35,
      decoration: const BoxDecoration(
        color: Colora.lightBlue,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(Dimensions.fifteen),
          topRight: Radius.circular(Dimensions.fifteen)
        ),
      ),
      child: Column(children: [
        widget.titleWidget,
        Dimensions.seven.height,
        Container(
          padding: const EdgeInsets.only(top: Dimensions.ten),
          decoration: BoxDecoration(
            color: Colora.primaryColor,
            borderRadius: BorderRadius.circular(Dimensions.fifteen)),
          child: ColorPicker(
            paletteType: widget.paletteType,
            hexInputBar: false,
            colorPickerWidth: Dimensions.width * .7,
            pickerAreaBorderRadius: BorderRadius.circular(Dimensions.fifteen),
            onColorChanged: (Color color) {
              bloc.add(SelectTopColor(topColor: color));
            },
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

class BColorPicker extends StatefulWidget {
  const BColorPicker({
    super.key,
    required this.titleWidget,
    this.paletteType = PaletteType.hsvWithHue,
  });

  final Widget titleWidget;
  final PaletteType paletteType;

  @override
  State<BColorPicker> createState() => _BColorPickerState();
}

class _BColorPickerState extends State<BColorPicker> {

  late VendorBloc bloc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    bloc = BlocProvider.of<VendorBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Dimensions.seven),
      height: Dimensions.height * .35,
      decoration: const BoxDecoration(
        color: Colora.lightBlue,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(Dimensions.fifteen),
          topRight: Radius.circular(Dimensions.fifteen)
        ),
      ),
      child: Column(children: [
        widget.titleWidget,
        Dimensions.seven.height,
        Container(
          padding: const EdgeInsets.only(top: Dimensions.ten),
          decoration: BoxDecoration(
              color: Colora.primaryColor,
              borderRadius: BorderRadius.circular(Dimensions.fifteen)),
          child: ColorPicker(
            paletteType: widget.paletteType,
            hexInputBar: false,
            colorPickerWidth: Dimensions.width * .7,
            pickerAreaBorderRadius: BorderRadius.circular(Dimensions.fifteen),
            onColorChanged: (Color color) {
              bloc.add(SelectFontColor(fontColor: color));
            },
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

