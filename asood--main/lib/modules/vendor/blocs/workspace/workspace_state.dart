part of 'workspace_bloc.dart';

enum Status { initial, loading, success, failure }

class WorkspaceState extends Equatable {
  final Status status;
  final List<MarketModel> storesList;
  final int? selectedmarket;

  const WorkspaceState({
    required this.status,
    required this.storesList,
    this.selectedmarket,
  });

  factory WorkspaceState.initial() {
    return const WorkspaceState(
      status: Status.initial,
      storesList: [],
    );
  }

  @override
  List<Object> get props => [status, storesList];

  WorkspaceState copyWith({
    Status? status,
    List<MarketModel>? storesList,
    int? selectedmarket,
  }) {
    return WorkspaceState(
      status: status ?? this.status,
      storesList: storesList ?? this.storesList,
      selectedmarket: selectedmarket ?? this.selectedmarket,
    );
  }
}
