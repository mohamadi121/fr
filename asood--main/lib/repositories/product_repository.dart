import '../models/product_model.dart';
import '../services/product_api_service.dart';

class ProductRepository{

  Future<dynamic> createProduct(ProductModel product) async {
    return await ProductApiService().createProduct(product);
  }

}
