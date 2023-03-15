import 'application/mobile/lojaController.dart';
import 'domain/port/input/loja_service.dart';
import 'domain/services/products_service_imp.dart';
import 'infraestructure/remote/products_mapper.dart';
import 'infraestructure/remote/products_repository_imp.dart';

void main() {
  LojaController controller = LojaController(
      ProductsServiceImp(ProductsRepositoryImp(ProductsMapper())));

  controller.getAll();
}
