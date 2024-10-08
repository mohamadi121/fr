part of 'vendor_bloc.dart';

class VendorEvent extends Equatable {
  const VendorEvent();

  @override
  List<Object> get props => [];
}

//----------------- logo ------------------
class AddLogoEvent extends VendorEvent {
  final int id;
  final XFile logoImage;

  const AddLogoEvent({
    required this.id,
    required this.logoImage,
  });
}

class DeleteLogoEvent extends VendorEvent{

  final int id;

  const DeleteLogoEvent({
    required this.id,
  });

}

//----------------- background ------------------
class AddBackgroundEvent extends VendorEvent {
  final int id;
  final XFile backgroundImage;

  const AddBackgroundEvent({
    required this.id,
    required this.backgroundImage,
  });
}

class DeleteBackgroundEvent extends VendorEvent {
  final int id;

  const DeleteBackgroundEvent({
    required this.id,
  });
}

//----------------- slider ------------------
class LoadSlider extends VendorEvent {
  final int marketId;
  const LoadSlider({
    required this.marketId,
  });
}

class AddSliderEvent extends VendorEvent {
  final int id;
  final XFile sliderImage;

  const AddSliderEvent({
    required this.id,
    required this.sliderImage,
  });
}

class DeleteSliderEvent extends VendorEvent {
  final int id;

  const DeleteSliderEvent({
    required this.id,
  });
}

//----------------- color ------------------
class SelectTopColor extends VendorEvent {
  final Color topColor;
  const SelectTopColor({required this.topColor});
}

//----------------- font ------------------
class SelectFontColor extends VendorEvent {
  final Color fontColor;
  const SelectFontColor({required this.fontColor});
}

class SelectFontFamily extends VendorEvent {
  final String fontFamily;
  const SelectFontFamily({required this.fontFamily});
}
