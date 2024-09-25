part of 'vendor_bloc.dart';

sealed class VendorState extends Equatable {
  const VendorState();
  
  @override
  List<Object> get props => [];
}

final class VendorInitial extends VendorState {}
