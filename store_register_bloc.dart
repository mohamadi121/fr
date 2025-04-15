import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:your_project_name/features/store/data/models/store_register_model.dart';
import 'package:your_project_name/features/store/data/repositories/store_repository.dart';
import 'package:your_project_name/features/store/presentation/bloc/store_register/store_register_event.dart';
import 'package:your_project_name/features/store/presentation/bloc/store_register/store_register_state.dart';

class StoreRegisterBloc extends Bloc<StoreRegisterEvent, StoreRegisterState> {
  final StoreRepository repository;

  StoreRegisterBloc(this.repository) : super(StoreRegisterInitial());

  @override
  Stream<StoreRegisterState> mapEventToState(StoreRegisterEvent event) async* {
    if (event is SubmitStoreRegisterEvent) {
      yield StoreRegisterLoading();
      try {
        final store = StoreRegisterModel(
          categoryId: event.categoryId,
          stateId: event.stateId,
          cityId: event.cityId,
          userId: event.userId,
          storeName: event.storeName,
          mobile: event.mobile,
          address: event.address,
        );
        await repository.registerStore(store.toJson());
        yield StoreRegisterSuccess();
      } catch (e) {
        yield StoreRegisterFailure(message: e.toString());
      }
    }
  }
}
