class StoreRegisterModel {
  final int categoryId;
  final int stateId;
  final int cityId;
  final int userId;
  final String storeName;
  final String? mobile;
  final String? address;

  StoreRegisterModel({
    required this.categoryId,
    required this.stateId,
    required this.cityId,
    required this.userId,
    required this.storeName,
    this.mobile,
    this.address,
  });

  factory StoreRegisterModel.fromJson(Map<String, dynamic> json) {
    return StoreRegisterModel(
      categoryId: int.tryParse(json['category_id'].toString()) ?? 0,
      stateId: int.tryParse(json['state_id'].toString()) ?? 0,
      cityId: int.tryParse(json['city_id'].toString()) ?? 0,
      userId: int.tryParse(json['user_id'].toString()) ?? 0,
      storeName: json['store_name'] ?? '',
      mobile: json['mobile'],
      address: json['address'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'category_id': categoryId.toString(),
      'state_id': stateId.toString(),
      'city_id': cityId.toString(),
      'user_id': userId.toString(),
      'store_name': storeName,
      'mobile': mobile,
      'address': address,
    };
  }
}
