// ignore_for_file: unnecessary_type_check

import 'dart:convert';
import 'package:asood/repositories/market_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../models/market_model.dart';
import '../../../../services/api_status.dart';

part 'workspace_event.dart';
part 'workspace_state.dart';

class WorkspaceBloc extends Bloc<WorkspaceEvent, WorkspaceState> {
  final MarketRepository repo = MarketRepository();

  WorkspaceBloc() : super(WorkspaceState.initial()) {
    on<LoadStores>(_getStores);
    // on<SelectMarket>(_selectMarket);
    on<GetProducts>(_getProducts);
    on<ContactUs>(_contactUs);
    on<GetComments>(_getComments);
    on<GetSpecialProducts>(_getSpecialProducts);
    on<GetDiscounts>(_getDiscounts);
    on<DeleteDiscount>(_deleteDiscount);
    on<CreateDiscount>(_createDiscount);
    on<ChangeColorAndFont>(_changeColorAndFont);
    on<ChangeProductTheme>(_changeProductTheme);
    on<ChangeThemeColors>(_changeThemeColors);
    on<EditeWorkSpaceInfo>(_editeWorkSpaceInfo);
  }

  _getStores(LoadStores event, Emitter<WorkspaceState> emit) async {
    emit(state.copyWith(status: Status.loading));
    try {
      final res = await repo.getMarketList();
      if (res is Success) {
        final json = jsonDecode(res.response.toString());
        final marketList = json['data'] as List;
        final storesList =
            marketList.map((e) => MarketModel.fromJson(e)).toList();
        emit(state.copyWith(status: Status.success, storesList: storesList));
      } else {
        emit(state.copyWith(status: Status.failure));
      }
    } catch (e) {
      emit(state.copyWith(status: Status.failure));
    }
  }

  _selectMarket(SelectMarket event, Emitter<WorkspaceState> emit) {
    emit(state.copyWith(selectedmarket: event.marketId));
  }

  _getProducts(GetProducts event, Emitter<WorkspaceState> emit) {
    emit(state.copyWith(status: Status.loading));
    try {
      final res = Success();
      if (res is Success) {
        emit(state.copyWith(status: Status.success));
      }
    } catch (e) {
      emit(state.copyWith(status: Status.failure));
    }
  }

  _contactUs(ContactUs event, Emitter<WorkspaceState> emit) {
    emit(state.copyWith(status: Status.loading));
    try {
      final res = Success();
      if (res is Success) {
        emit(state.copyWith(status: Status.success));
      }
    } catch (e) {
      emit(state.copyWith(status: Status.failure));
    }
  }

  _getComments(GetComments event, Emitter<WorkspaceState> emit) {
    emit(state.copyWith(status: Status.loading));
    try {
      final res = Success();
      if (res is Success) {
        emit(state.copyWith(status: Status.success));
      }
    } catch (e) {
      emit(state.copyWith(status: Status.failure));
    }
  }

  _getSpecialProducts(GetSpecialProducts event, Emitter<WorkspaceState> emit) {
    emit(state.copyWith(status: Status.loading));
    try {
      final res = Success();
      if (res is Success) {
        emit(state.copyWith(status: Status.success));
      }
    } catch (e) {
      emit(state.copyWith(status: Status.failure));
    }
  }

  _getDiscounts(GetDiscounts event, Emitter<WorkspaceState> emit) {
    emit(state.copyWith(status: Status.loading));
    try {
      final res = Success();
      if (res is Success) {
        emit(state.copyWith(status: Status.success));
      }
    } catch (e) {
      emit(state.copyWith(status: Status.failure));
    }
  }

  _deleteDiscount(DeleteDiscount event, Emitter<WorkspaceState> emit) {
    emit(state.copyWith(status: Status.loading));
    try {
      final res = Success();
      if (res is Success) {
        emit(state.copyWith(status: Status.success));
      }
    } catch (e) {
      emit(state.copyWith(status: Status.failure));
    }
  }

  _createDiscount(CreateDiscount event, Emitter<WorkspaceState> emit) {
    emit(state.copyWith(status: Status.loading));
    try {
      final res = Success();
      if (res is Success) {
        emit(state.copyWith(status: Status.success));
      }
    } catch (e) {
      emit(state.copyWith(status: Status.failure));
    }
  }

  _changeColorAndFont(ChangeColorAndFont event, Emitter<WorkspaceState> emit) {
    emit(state.copyWith(status: Status.loading));
    try {
      final res = Success();
      if (res is Success) {
        emit(state.copyWith(status: Status.success));
      }
    } catch (e) {
      emit(state.copyWith(status: Status.failure));
    }
  }

  _editeWorkSpaceInfo(EditeWorkSpaceInfo event, Emitter<WorkspaceState> emit) {
    emit(state.copyWith(status: Status.loading));
    try {
      final res = Success();
      if (res is Success) {
        emit(state.copyWith(status: Status.success));
      }
    } catch (e) {
      emit(state.copyWith(status: Status.failure));
    }
  }

  _changeProductTheme(ChangeProductTheme event, Emitter<WorkspaceState> emit) {
    emit(state.copyWith(status: Status.loading));
    try {
      final res = Success();
      if (res is Success) {
        emit(state.copyWith(status: Status.success));
      }
    } catch (e) {
      emit(state.copyWith(status: Status.failure));
    }
  }

  _changeThemeColors(ChangeThemeColors event, Emitter<WorkspaceState> emit) {
    emit(state.copyWith(status: Status.loading));
    try {
      final res = Success();
      if (res is Success) {
        emit(state.copyWith(status: Status.success));
      }
    } catch (e) {
      emit(state.copyWith(status: Status.failure));
    }
  }
}
