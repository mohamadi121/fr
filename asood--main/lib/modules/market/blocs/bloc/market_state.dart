part of 'market_bloc.dart';

enum MarketStatus { initial, loading, success, failure }

class MarketState extends Equatable{

  final List templateList;
  final int templateIndex;

  const MarketState({

    required this.templateList,
    required this.templateIndex,

  });

  factory MarketState.initial() {
    return const MarketState(

      templateList: [],
      templateIndex : -1,

    );
  }

  MarketState copyWith({

    List? templateList,
    int? templateIndex,

  }) {
    return MarketState(

      templateList: templateList ?? this.templateList,
      templateIndex: templateIndex ?? this.templateIndex,

    );
  }


  @override
  List<Object> get props {
    return [

      templateList,
      templateIndex,

    ];
  }
}

// final class MarketInitial extends MarketState {}
