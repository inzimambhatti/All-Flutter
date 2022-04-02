import 'package:get/get.dart';

import '../controllers/contactus_controller.dart';

class ContactusBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ContactusController>(
      () => ContactusController(),
    );
  }
}
