part of 'market_bloc.dart';

sealed class MarketState extends Equatable {
  const MarketState();

  @override
  List<Object> get props => [];
}

final class MarketInitial extends MarketState {}
