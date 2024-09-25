// ignore_for_file: unnecessary_type_check, avoid_print, empty_catches

import 'dart:convert';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../models/market_contact_model.dart';
import '../../../../models/work_hours_model.dart';
import '../../../../repositories/market_repository.dart';
import '../../../../services/api_status.dart';

import '../../../../shared/constants/constants.dart';

part 'create_workspace_event.dart';
part 'create_workspace_state.dart';

class CreateWorkSpaceBloc
    extends Bloc<CreateWorkSpaceEvent, CreateWorkSpaceState> {
  MarketRepository marketRepo = MarketRepository();
  CreateWorkSpaceBloc() : super(CreateWorkSpaceState.initial()) {
    //on ChangeTabView change activeindex
    on<ChangeTabView>((event, emit) {
      emit(state.copyWith(activeTabIndex: event.activeTabIndex));
    });

    //set market type
    on<SetMarketType>((event, emit) {
      emit(state.copyWith(marketType: event.marketType));
    });

    on<CreateMarket>((event, emit) async {
      try {
        emit(state.copyWith(
            status: CWSStatus.loading,
            marketType: "shop",
            businessId: event.businessId,
            name: event.name,
            description: event.description,
            subCategory: event.subCategory,
            slogan: event.slogan));

        var res = await marketRepo.creatMarketBase(
            event.marketType,
            event.businessId,
            event.name,
            event.description,
            event.subCategory,
            event.slogan);

        if (res is Success) {
          var json = jsonDecode(res.response.toString());
          print(json);
          emit(state.copyWith(
              activeTabIndex: 1,
              marketType: "shop",
              status: CWSStatus.success));
          add(const ChangeTabView(activeTabIndex: 1));
        } else {
          emit(state.copyWith(
              status: CWSStatus.failure, error: res.error.toString()));
        }
      } catch (e) {
        emit(state.copyWith(status: CWSStatus.failure));
      }
    });

    on<ChangeHasWorkTime>((event, emit) {
      emit(state.copyWith(hasWorkTime: event.hasWorkTime));
      print(state.hasWorkTime);
    });
    on<Validator>((event, emit) {
      if (event.phoneNumber1.isEmpty) {
        emit(state.copyWith(phoneBorder: Colors.red));
      } else {
        emit(state.copyWith(phoneBorder: Colora.borderTag));
      }
      if (event.email.isEmpty) {
        emit(state.copyWith(emailBorder: Colors.red));
      } else {
        emit(state.copyWith(emailBorder: Colora.borderTag));
      }
    });

    on<MarketContact>(_setMarketContact);

    on<CalPrice>(_calPrice);

    on<SetDiscount>(_setDiscount);

    on<PayPrice>(_payPrice);
  }

  _setMarketContact(
      MarketContact event, Emitter<CreateWorkSpaceState> emit) async {
    emit(state.copyWith(
        phoneNumber1: event.phoneNumber1,
        phoneNumber2: event.phoneNumber2,
        telephone: event.telephone,
        status: CWSStatus.loading,
        fax: event.fax,
        email: event.email,
        websiteUrl: event.websiteUrl,
        instagramId: event.instagramId,
        telegramId: event.telegramId));
    MarketContactModel marketContact = MarketContactModel(
      market: 8,
      firstMobileNumber: event.phoneNumber1,
      secondMobileNumber: event.phoneNumber2,
      telephone: event.telephone,
      fax: event.fax,
      email: event.email,
      websiteUrl: event.websiteUrl,
      instagramId: event.instagramId,
      telegramId: event.telegramId,
    );
    try {
      var res = await marketRepo.createMarketContact(
        marketContact,
      );
      if (res is Success) {
        emit(state.copyWith(status: CWSStatus.success));
      } else {
        emit(state.copyWith(
            status: CWSStatus.failure, error: res.error.toString()));
      }
    } catch (e) {}
  }

  _calPrice(CalPrice event, Emitter<CreateWorkSpaceState> emit) async {
    emit(state.copyWith(status: CWSStatus.loading));
    try {
      final res = Success();
      if (res is Success) {
        emit(state.copyWith(status: CWSStatus.success));
      } else {
        // emit(state.copyWith(
        //     status: CWSStatus.failure, error: res.error.toString()));
      }
    } catch (e) {}
  }

  _setDiscount(SetDiscount event, Emitter<CreateWorkSpaceState> emit) async {
    emit(state.copyWith(status: CWSStatus.loading));
    try {
      final res = Success();
      if (res is Success) {
        emit(state.copyWith(status: CWSStatus.success));
      } else {
        // emit(state.copyWith(
        //     status: CWSStatus.failure, error: res.error.toString()));
      }
    } catch (e) {}
  }

  _payPrice(PayPrice event, Emitter<CreateWorkSpaceState> emit) async {
    emit(state.copyWith(status: CWSStatus.loading));
    try {
      final res = Success();
      if (res is Success) {
        emit(state.copyWith(status: CWSStatus.success));
      } else {
        // emit(state.copyWith(
        //     status: CWSStatus.failure, error: res.error.toString()));
      }
    } catch (e) {}
  }
}
