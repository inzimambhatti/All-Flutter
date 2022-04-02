import 'package:get/get.dart';

import '../controllers/drawer_file_controller.dart';

class DrawerFileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DrawerFileController>(
      () => DrawerFileController(),
    );
  }
}
