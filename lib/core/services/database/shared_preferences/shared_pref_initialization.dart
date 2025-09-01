import 'package:shared_preferences/shared_preferences.dart';

import '../../../utils/logger/app_logger.dart';

class SharedPrefInit
{
  static SharedPreferences? _prefs;

  static Future<void> init() async
  {
    _prefs ??= await SharedPreferences.getInstance();
  }

  static SharedPreferences get prefs
  {
    if (_prefs == null)
    {
      AppLogger.error('SharedPreferences not initialized. Call SharedPrefInit.init() first.');
    }
    return _prefs!;
  }
}
