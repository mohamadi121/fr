part of 'workspace_bloc.dart';

enum WorkspaceStatus { initial, loading, success, failure }

class WorkspaceState extends Equatable {
  final WorkspaceStatus status;
  final List<MarketModel> storesList;
  final int? selectedMarket;

  final int activeTabIndex;

  const WorkspaceState({
    required this.status,
    required this.storesList,
    this.selectedMarket,

    required this.activeTabIndex,

  });

  factory WorkspaceState.initial() {
    return const WorkspaceState(
      status: WorkspaceStatus.initial,
      storesList: [],
      activeTabIndex: 0
    );
  }

  @override
  List<Object> get props => [status, storesList];

  WorkspaceState copyWith({
    WorkspaceStatus? status,
    List<MarketModel>? storesList,
    int? selectedMarket,

    int? activeTabIndex,
  }) {
    return WorkspaceState(
      status: status ?? this.status,
      storesList: storesList ?? this.storesList,
      selectedMarket: selectedMarket ?? this.selectedMarket,

      activeTabIndex : activeTabIndex ?? this.activeTabIndex,

    );
  }
}
