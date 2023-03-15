import '../../domain/port/input/loja_service.dart';

class LojaController {
  ProductsService productsService;

  LojaController(this.productsService);

  void getAll() {
    productsService.getListProducts().forEach(print);
  }
}
