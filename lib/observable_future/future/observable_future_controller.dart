import 'package:mobx/mobx.dart';

part 'observable_future_controller.g.dart';

class ObservableFutureController = _ObservableFutureControllerBase
    with _$ObservableFutureController;

abstract class _ObservableFutureControllerBase with Store {
  @observable
  var nameFuture = Future.value('').asObservable();

  Future<void> searchName() async {
    nameFuture = Future.delayed(
      const Duration(seconds: 3),
      () => 'Felipe',
    ).asObservable();
  }
}
