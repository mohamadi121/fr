import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
// import 'package:flutter/foundation.dart';
// import 'package:isar/isar.dart';

import '../../../../models/key_value_model.dart';
import '../../../../repositories/user_repository.dart';
import '../../../../services/Secure_Storage.dart';
import '../../../../services/api_status.dart';
import '../../../../services/isar_service.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  // final IsarObjectService _isarService =
  //     IsarObjectService<KeyValue>(KeyValueSchema);
  final UserRepository userRepo;
  LoginBloc({required this.userRepo}) : super(LoginState.initial()) {
    on<SendOtp>((event, emit) async {
      await _sendOtp(event, emit);
    });
    on<ToggleTermsCheckboxEvent>((event, emit) {
      emit(state.copyWith(
        termStatus: event.isClicked ? true : false,
      ));
    });
    on<Logout>((event, emit) {});
    on<VerifyOtp>((event, emit) async {
      await _verifyOtp(event, emit);
    });
  }

  //send otp
  _sendOtp(event, emit) async {
    emit(state.copyWith(
      phoneNumber: event.phone,
      status: LoginStatus.loading,
    ));
    try {
      var res = await userRepo.sendCode(event.phone);
      if (res is Success) {
        emit(state.copyWith(status: LoginStatus.success));
      } else if (res is Failure) {
        emit(
          state.copyWith(
            status: LoginStatus.error,
            error: res.errorResponse.toString(),
          ),
        );
      }
    } catch (e) {
      emit(
        state.copyWith(
          status: LoginStatus.error,
          error: e.toString(),
        ),
      );
    }
  }

  //verify otp
  _verifyOtp(event,emit,) async {
    emit(state.copyWith(
      status: LoginStatus.loading,
    ));
    try {
      var res = await userRepo.verifyCode(event.phone, event.otp);
      if (res is Success) {
      
        var json = jsonDecode(res.response.toString());

        // KeyValue token = KeyValue(
        //   key: "token",
        //   value: json["data"]["token"],
        // );
        // await _isarService.create(token);

        SecureStorage().writeSecureStorage('token', json["data"]["token"]);
        
        emit(
          state.copyWith(
            status: LoginStatus.success,
          ),
        );
      } else if (res is Failure) {
        emit(
          state.copyWith(
            status: LoginStatus.error,
            error: res.errorResponse.toString(),
          ),
        );
      }
    } catch (e) {
      emit(
        state.copyWith(
          status: LoginStatus.error,
          error: e.toString(),
        ),
      );
    }
  }

}
