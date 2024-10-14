import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

part 'market_event.dart';
part 'market_state.dart';

class MarketBloc extends Bloc<MarketEvent, MarketState> {

  MarketBloc() : super(MarketState.initial()){
    on<MarketEvent>((event, emit) {});

    on<AddTemplateEvent>(_addTemplate);
    on<RemoveTemplateEvent>(_removeTemplate);

  }

  _addTemplate(AddTemplateEvent event, Emitter<MarketState> emit) {
    emit(state.copyWith(templateList: [...state.templateList,event.template]));
  }

  _removeTemplate(RemoveTemplateEvent event, Emitter<MarketState> emit) {
    emit(state.copyWith(templateList: state.templateList.removeAt(event.index)));
  }

}
