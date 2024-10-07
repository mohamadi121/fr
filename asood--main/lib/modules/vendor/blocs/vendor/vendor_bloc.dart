import 'dart:convert';

import 'package:asood/models/slider_model.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../repositories/market_repository.dart';
import '../../../../services/api_status.dart';

part 'vendor_event.dart';
part 'vendor_state.dart';

class VendorBloc extends Bloc<VendorEvent, VendorState> {

  final MarketRepository marketRepository = MarketRepository();

  VendorBloc() : super(VendorState.initial()){
    on<AddLogoEvent>(_setShopLogo);
    on<AddBackgroundEvent>(_setShopBackground);
    on<AddSliderEvent>(_setShopSlider);
    on<LoadSlider>(_getSlider);
  }

  _setShopLogo(AddLogoEvent event, Emitter<VendorState> emit) async {
    emit(state.copyWith(
      id: event.id,
      logoFile: event.logoImage,
      status: VendorStatus.loading
    ));
      var res = await marketRepository.uploadMarketLogo(
        event.logoImage,
        event.id
      );
      if (res is Success) {
        var json = jsonDecode(res.response.toString());
        emit(state.copyWith(status: VendorStatus.success));
      }
      else {
        emit(state.copyWith(
            status: VendorStatus.failure, error: res.error.toString()));
      }
    }

  _setShopBackground(AddBackgroundEvent event, Emitter<VendorState> emit) async {
    emit(state.copyWith(
      id: event.id,
      logoFile: event.backgroundImage,
      status: VendorStatus.loading
    ));
    var res = await marketRepository.uploadMarketBackground(
        event.backgroundImage,
        event.id
    );
    if (res is Success) {
      var json = jsonDecode(res.response.toString());
      emit(state.copyWith(status: VendorStatus.success));
    }
    else {
      emit(state.copyWith(
          status: VendorStatus.failure, error: res.error.toString()));
    }
  }

  _setShopSlider(AddSliderEvent event, Emitter<VendorState> emit) async {
    emit(state.copyWith(
      id: event.id,
      logoFile: event.sliderImage,
      status: VendorStatus.loading
    ));
    var res = await marketRepository.uploadMarketSlider(
      event.id,
      event.sliderImage,
    );
    if (res is Success) {
      var json = jsonDecode(res.response.toString());
      emit(state.copyWith(status: VendorStatus.success));
    }
    else {
      emit(state.copyWith(
          status: VendorStatus.failure, error: res.error.toString()));
    }
  }

  _getSlider(LoadSlider event, Emitter<VendorState> emit) async {
    emit(state.copyWith(status: VendorStatus.loading));
    try {
      final res = await marketRepository.getMarketSliders(event.marketId);
      if (res is Success) {
        final json = jsonDecode(res.response.toString());
        final initList = json['data'] as List;
        final sliderList =
        initList.map((e) => SliderModel.fromJson(e)).toList();
        emit(state.copyWith(status: VendorStatus.success, sliderList: sliderList));
      } else {
        emit(state.copyWith(status: VendorStatus.failure));
      }
    } catch (e) {
      emit(state.copyWith(status: VendorStatus.failure));
    }
  }

}
