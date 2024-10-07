part of 'vendor_bloc.dart';

class VendorEvent extends Equatable {
  const VendorEvent();

  @override
  List<Object> get props => [];
}

class AddLogoEvent extends VendorEvent {
  final int id;
  final XFile logoImage;

  const AddLogoEvent({
    required this.id,
    required this.logoImage,
  });
}

class AddBackgroundEvent extends VendorEvent {
  final int id;
  final XFile backgroundImage;

  const AddBackgroundEvent({
    required this.id,
    required this.backgroundImage,
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

class LoadSlider extends VendorEvent {
  final int marketId;
  const LoadSlider({
    required this.marketId,
  });
}
