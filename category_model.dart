class CategoryModel {
  final int id;
  final String title;

  CategoryModel({required this.id, required this.title});

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      id: int.tryParse(json['id'].toString()) ?? 0,
      title: json['title'] ?? '',
    );
  }
}
