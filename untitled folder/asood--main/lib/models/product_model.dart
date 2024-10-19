class Product {
  String? name;
  String? description;
  String? technicalDetails;
  int? subCatergory;
  String? keywords;
  String? inventory;
  String? price;
  bool? isMarketerSelected;
  int? originalPrice;
  int? partnerPrice;
  int? unlimitedPrice;
  int? maximumPrice;
  int? complementaryProduct;
  int? giftProduct;
  String? label;

  Product(
      {this.name,
      this.description,
      this.technicalDetails,
      this.subCatergory,
      this.keywords,
      this.inventory,
      this.price,
      this.isMarketerSelected,
      this.originalPrice,
      this.partnerPrice,
      this.unlimitedPrice,
      this.maximumPrice,
      this.complementaryProduct,
      this.giftProduct,
      this.label});

  Product.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    technicalDetails = json['technical_details'];
    subCatergory = json['sub_catergory'];
    keywords = json['keywords'];
    inventory = json['inventory'];
    price = json['price'];
    isMarketerSelected = json['is_marketer_selected'];
    originalPrice = json['original_price'];
    partnerPrice = json['partner_price'];
    unlimitedPrice = json['unlimited_price'];
    maximumPrice = json['maximum_price'];
    complementaryProduct = json['complementary_product'];
    giftProduct = json['gift_product'];
    label = json['label'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['description'] = description;
    data['technical_details'] = technicalDetails;
    data['sub_catergory'] = subCatergory;
    data['keywords'] = keywords;
    data['inventory'] = inventory;
    data['price'] = price;
    data['is_marketer_selected'] = isMarketerSelected;
    data['original_price'] = originalPrice;
    data['partner_price'] = partnerPrice;
    data['unlimited_price'] = unlimitedPrice;
    data['maximum_price'] = maximumPrice;
    data['complementary_product'] = complementaryProduct;
    data['gift_product'] = giftProduct;
    data['label'] = label;
    return data;
  }
}
