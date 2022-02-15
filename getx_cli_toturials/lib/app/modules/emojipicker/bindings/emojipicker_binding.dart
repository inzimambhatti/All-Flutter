import 'package:get/get.dart';

import '../controllers/emojipicker_controller.dart';

class EmojipickerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EmojipickerController>(
      () => EmojipickerController(),
    );
  }
}
