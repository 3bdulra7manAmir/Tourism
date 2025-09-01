import 'color_manager_base.dart';
import 'color_manager_dark.dart';
import 'color_manager_light.dart';

class AppColors {
  AppColors._();
  static AppColors? _instance;

  static AppColors get i {
    _instance ??= AppColors._();
    return _instance!;
  }

  // ---------------- Colors ----------------
  static ColorManagerBase get color => i._colors;

  // ---------------- Gradients ----------------
  static GradientManagerBase get gradient => i._gradients;

  String _themeMode = 'light';

  set themeMode(String mode) {
    if (mode == 'light' || mode == 'dark') {
      _themeMode = mode;
    }
  }

  ColorManagerBase get _colors {
    return _themeMode == 'dark' ? DarkColorScheme() : LightColorScheme();
  }

  GradientManagerBase get _gradients {
    return _themeMode == 'dark' ? DarkGradients() : LightGradients();
  }
}
