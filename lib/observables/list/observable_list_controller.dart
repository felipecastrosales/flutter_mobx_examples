import 'package:mobx/mobx.dart';

import 'package:mobx_bmi/model/product_model.dart';

part 'observable_list_controller.g.dart';

class ObservableListController = ObservableListControllerBase
    with _$ObservableListController;

abstract class ObservableListControllerBase with Store {
  @observable
  var products = <ProductModel>[].asObservable();
  // var products = <ProductModel>[];
  // var products = ObservableList();

  @action
  void loadProducts() {
    var productsData = [
      ProductModel(name: 'Computador'),
      ProductModel(name: 'Celular'),
      ProductModel(name: 'Mouse'),
    ];
    products.addAll(productsData);
  }

  @action
  void addProducts() {
    products.add(
      ProductModel(name: 'Macbook'),
    );
  }

  @action
  void removeProducts() {
    if (products.isNotEmpty) {
      products.removeAt(0);
    }
  }
}
