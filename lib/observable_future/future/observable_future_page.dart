import 'package:flutter/material.dart';

import 'package:flutter_mobx/flutter_mobx.dart';

import 'observable_future_controller.dart';

class ObservableFuturePage extends StatefulWidget {
  const ObservableFuturePage({super.key});

  @override
  State<ObservableFuturePage> createState() => _ObservableFuturePageState();
}

class _ObservableFuturePageState extends State<ObservableFuturePage> {
  final controller = ObservableFutureController();

  @override
  void initState() {
    super.initState();
    controller.searchName();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ObservableFuturePage'),
      ),
      body: Observer(
        builder: (_) {
          return FutureBuilder<String>(
            future: controller.nameFuture,
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                  return const SizedBox.shrink();
                case ConnectionState.waiting:
                case ConnectionState.active:
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                case ConnectionState.done:
                  if (snapshot.hasData) {
                    return Center(
                      child: Text(snapshot.requireData),
                    );
                  }
                  return const Center(
                    child: Text('Nome não encontrado'),
                  );
              }
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.searchName();
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
