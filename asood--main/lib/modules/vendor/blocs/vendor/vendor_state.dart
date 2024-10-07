part of 'vendor_bloc.dart';

enum VendorStatus { initial, loading, success, failure }

class VendorState extends Equatable {

  final int id;
  final String businessId;
  final String name;
  final String description;
  final int subCategory;
  final String slogan;
  final String message;
  final String marketType;
  final String error;
  final VendorStatus status;

  final XFile logoFile;

  final XFile backgroundFile;

  final XFile sliderFile;
  final List<SliderModel> sliderList;

  const VendorState({
    required this.id,
    required this.businessId,
    required this.name,
    required this.description,
    required this.slogan,
    required this.message,
    required this.marketType,
    required this.subCategory,
    required this.status,
    required this.error,

    required this.logoFile,
    required this.backgroundFile,

    required this.sliderFile,
    required this.sliderList,
  });

  factory VendorState.initial() {
    return VendorState(
      id: 0,
      businessId: '',
      name: '',
      description: '',
      subCategory: 0,
      slogan: '',
      status: VendorStatus.initial,
      message: '',
      marketType: 'shop',
      error: '',

      logoFile: XFile(''),
      backgroundFile: XFile(''),

      sliderFile: XFile(''),
      sliderList: [],
    );
  }

  VendorState copyWith({
    int? id,
    String? businessId,
    String? name,
    String? description,
    int? subCategory,
    String? slogan,
    VendorStatus? status,
    String? message,
    String? marketType,
    String? error,
    XFile? logoFile,
    XFile? backgroundFile,

    XFile? sliderFile,
    List<SliderModel>? sliderList,
  }) {
    return VendorState(
      id: id ?? this.id,
      businessId: businessId ?? this.businessId,
      name: name ?? this.name,
      description: description ?? this.description,
      subCategory: subCategory ?? this.subCategory,
      slogan: slogan ?? this.slogan,
      status: status ?? this.status,
      message: message ?? this.message,
      marketType: marketType ?? this.marketType,
      error: error ?? this.error,

      logoFile: logoFile ?? this.logoFile,
      backgroundFile: backgroundFile ?? this.backgroundFile,

      sliderFile: sliderFile ?? this.sliderFile,
      sliderList: sliderList ?? this.sliderList,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      id,
      businessId,
      name,
      description,
      subCategory,
      slogan,
      status,
      message,
      marketType,
      error,

      logoFile,
      backgroundFile,

      sliderFile,
      sliderList
    ];
  }
  
}
