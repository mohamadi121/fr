class Discount {
  String? title;
  String? description;
  int? percentage;
  int? quantity;

  Discount({this.title, this.description, this.percentage, this.quantity});

  Discount.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    percentage = json['percentage'];
    quantity = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['description'] = description;
    data['percentage'] = percentage;
    data['quantity'] = quantity;
    return data;
  }
}
