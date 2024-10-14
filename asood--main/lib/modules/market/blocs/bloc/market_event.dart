part of 'market_bloc.dart';

sealed class MarketEvent extends Equatable {
  const MarketEvent();

  @override
  List<Object> get props => [];
}

class AddTemplateEvent extends MarketEvent {
  final int template;

  const AddTemplateEvent({
    required this.template,
  });
}

class RemoveTemplateEvent extends MarketEvent {
  final int index;

  const RemoveTemplateEvent({
    required this.index,
  });
}
