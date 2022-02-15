import 'package:get/get.dart';

class ElegantnumberscreenController extends GetxController {
  //TODO: Implement ElegantnumberscreenController

  RxNum defaultValue=RxNum(10.0);
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
