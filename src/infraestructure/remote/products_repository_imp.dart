import '../../domain/model/products.dart';
import '../../domain/port/output/products_repository.dart';
import 'products_mapper.dart';

class ProductsRepositoryImp implements ProductsRepository {
  ProductsMapper productsMapper;

  ProductsRepositoryImp(this.productsMapper);

  List<Map> fakeDB = [
    {
      'camisa': '150 RS',
      'camisa': '150 RS',
    }
  ];
  @override
  List<Products> productsRepository() {
    final objectProducts = fakeDB;
    final list = objectProducts.map((e) => productsMapper.toDomain(e)).toList();
    return list;
  }
}
