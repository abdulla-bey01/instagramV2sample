import 'package:get/get.dart';
import 'dark_theme.dart';
import 'light_theme.dart';
import 'theme_mode.dart';
import 'theme_model.dart';

class ThemeController extends RxController {
  final Rx<ThemeMode> _mode = ThemeMode.light.obs;
  ThemeModel get theme =>
      _mode.value == ThemeMode.dark ? darkTheme : lightTheme;
  void toggleTheme() {
    _mode.value =
        _mode.value == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
  }
}
