import 'package:mobx/mobx.dart';

import 'package:mobx_bmi/model/product_model.dart';

import 'model/product_store.dart';

part 'observable_model_controller.g.dart';

class ObservableModelController = ObservableModelControllerBase
    with _$ObservableModelController;

abstract class ObservableModelControllerBase with Store {
  @observable
  var products = <ProductStore>[].asObservable();

  @action
  void loadProducts() {
    var productsData = [
      ProductStore(
        product: ProductModel(name: 'Computador'),
        selected: false,
      ),
      ProductStore(
        product: ProductModel(name: 'Celular'),
        selected: false,
      ),
      ProductStore(
        product: ProductModel(name: 'Mouse'),
        selected: false,
      ),
    ];
    products.addAll(productsData);
  }

  @action
  void addProducts() {
    products.add(
      ProductStore(
        product: ProductModel(name: 'Macbook'),
        selected: false,
      ),
    );
  }

  @action
  void removeProducts() {
    if (products.isNotEmpty) {
      products.removeAt(0);
    }
  }

  @action
  void selectedProducts(int index) {
    var productSelected = products[index].selected;
    products[index].selected = !productSelected;
  }
}
