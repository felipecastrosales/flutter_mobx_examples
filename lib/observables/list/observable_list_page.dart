import 'package:flutter/material.dart';

import 'package:flutter_mobx/flutter_mobx.dart';

import 'observable_list_controller.dart';

class ObservableListPage extends StatefulWidget {
  const ObservableListPage({super.key});

  @override
  State<ObservableListPage> createState() => _ObservableListPageState();
}

class _ObservableListPageState extends State<ObservableListPage> {
  final controller = ObservableListController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ObservableListPage'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Observer(
              builder: (_) {
                return ListView.builder(
                  itemCount: controller.products.length,
                  itemBuilder: (context, index) {
                    final productName = controller.products[index].name;
                    return CheckboxListTile(
                      value: false,
                      onChanged: (_) {},
                      title: Text(productName),
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
