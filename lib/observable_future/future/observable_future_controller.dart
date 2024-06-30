import 'package:mobx/mobx.dart';

part 'observable_future_controller.g.dart';

class ObservableFutureController = ObservableFutureControllerBase
    with _$ObservableFutureController;

abstract class ObservableFutureControllerBase with Store {
  @observable
  var nameFuture = ObservableFuture.value('');
  // var nameFuture = Future.value('').asObservable();

  Future<void> searchName() async {
    final searchNameFuture = Future.delayed(
      const Duration(seconds: 3),
      () => 'Felipe',
    );
    // nameFuture = searchNameFuture.asObservable();
    nameFuture = ObservableFuture(searchNameFuture);
  }
}
