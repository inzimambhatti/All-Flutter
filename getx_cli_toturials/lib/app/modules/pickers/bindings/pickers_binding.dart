import 'package:get/get.dart';

import '../controllers/pickers_controller.dart';

class PickersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PickersController>(
      () => PickersController(),
    );
  }
}
