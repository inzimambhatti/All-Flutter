import 'package:get/get.dart';


import '../modules/elegantnumberscreen/bindings/elegantnumberscreen_binding.dart';
import '../modules/elegantnumberscreen/views/elegantnumberscreen_view.dart';
import '../modules/emojipicker/bindings/emojipicker_binding.dart';
import '../modules/emojipicker/views/emojipicker_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/pickers/bindings/pickers_binding.dart';
import '../modules/pickers/views/pickers_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ELEGANTNUMBERSCREEN,
      page: () => ElegantnumberscreenView(),
      binding: ElegantnumberscreenBinding(),
    ),
    GetPage(
      name: _Paths.PICKERS,
      page: () => PickersView(),
      binding: PickersBinding(),
    ),
    GetPage(
      name: _Paths.EMOJIPICKER,
      page: () => EmojipickerView(),
      binding: EmojipickerBinding(),
    ),
  ];
}
