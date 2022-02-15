import 'package:get/get.dart';

import '../controllers/elegantnumberscreen_controller.dart';

class ElegantnumberscreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ElegantnumberscreenController>(
      () => ElegantnumberscreenController(),
    );
  }
}
