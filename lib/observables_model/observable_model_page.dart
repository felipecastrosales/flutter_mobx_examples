import 'package:flutter/material.dart';

import 'package:flutter_mobx/flutter_mobx.dart';

import 'observable_model_controller.dart';

class ObservableModelPage extends StatefulWidget {
  const ObservableModelPage({super.key});

  @override
  State<ObservableModelPage> createState() => _ObservableListPModelageState();
}

class _ObservableListPModelageState extends State<ObservableModelPage> {
  final controller = ObservableModelController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ObservableModelPage'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Observer(
              builder: (_) {
                return ListView.builder(
                  itemCount: controller.products.length,
                  itemBuilder: (context, index) {
                    final productStore = controller.products[index];
                    return Observer(
                      builder: (_) {
                        return CheckboxListTile(
                          value: productStore.selected,
                          onChanged: (_) => controller.selectedProducts(index),
                          title: Text(productStore.product.name),
                        );
                      },
                    );
                  },
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () => controller.addProducts(),
                child: const Text('Adicionar'),
              ),
              TextButton(
                onPressed: () => controller.removeProducts(),
                child: const Text('Remover'),
              ),
              TextButton(
                onPressed: () => controller.loadProducts(),
                child: const Text('Carregar'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
