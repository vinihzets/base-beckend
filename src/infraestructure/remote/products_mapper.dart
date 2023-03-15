import '../../domain/model/products.dart';

class ProductsMapper {
  Products toDomain(Map map) {
    return Products(map['camisa']);
  }
}
