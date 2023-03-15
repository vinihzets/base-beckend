import '../model/products.dart';
import '../port/input/loja_service.dart';
import '../port/output/products_repository.dart';

class ProductsServiceImp implements ProductsService {
  ProductsRepository productsRepository;

  ProductsServiceImp(this.productsRepository);

  @override
  List<Products> getListProducts() {
    return productsRepository.productsRepository();
  }
}
