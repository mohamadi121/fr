import 'dart:convert';
import 'dart:ui';

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
    on<DeleteLogoEvent>(_deleteShopLogo);

    on<AddBackgroundEvent>(_setShopBackground);
    on<DeleteBackgroundEvent>(_deleteShopBackground);

    on<LoadSlider>(_getSlider);
    on<AddSliderEvent>(_setShopSlider);
    on<DeleteSliderEvent>(_deleteShopSlider);

    on<SelectTopColor>(_selectTopColor);
    on<SelectFontColor>(_selectFontColor);
    on<SelectFontFamily>(_selectFontFamily);
  }

  //------------- logo -----------------
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

  _deleteShopLogo(DeleteLogoEvent event, Emitter<VendorState> emit) async {
    emit(state.copyWith(
        id: event.id,
        status: VendorStatus.loading
    ));
    var res = await marketRepository.deleteMarketLogo(
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


  //------------- background -----------------
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

  _deleteShopBackground(DeleteBackgroundEvent event, Emitter<VendorState> emit) async {
    emit(state.copyWith(
        id: event.id,
        status: VendorStatus.loading
    ));
    var res = await marketRepository.deleteMarketBackground(
        event.id
    );
    if (res is Success) {
      // var json = jsonDecode(res.response.toString());
      emit(state.copyWith(status: VendorStatus.success));
    }
    else {
      emit(state.copyWith(
          status: VendorStatus.failure, error: res.error.toString()));
    }
  }


  //------------- slider -----------------
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

  _deleteShopSlider(DeleteSliderEvent event, Emitter<VendorState> emit) async {
    emit(state.copyWith(
        id: event.id,
        status: VendorStatus.loading
    ));
    var res = await marketRepository.deleteMarketSlider(
        event.id
    );
    if (res is Success) {
      // var json = jsonDecode(res.response.toString());
      emit(state.copyWith(status: VendorStatus.success));
    }
    else {
      emit(state.copyWith(
          status: VendorStatus.failure, error: res.error.toString()));
    }
  }

  //-------------- color -----------------
  _selectTopColor(SelectTopColor event, Emitter<VendorState> emit) {
    emit(state.copyWith(topColor: event.topColor));
  }


  //--------------- font -----------------
  _selectFontColor(SelectFontColor event, Emitter<VendorState> emit) {
    emit(state.copyWith(fontColor: event.fontColor));
  }

  _selectFontFamily(SelectFontFamily event, Emitter<VendorState> emit) {
    emit(state.copyWith(fontFamily: event.fontFamily));
  }

}
