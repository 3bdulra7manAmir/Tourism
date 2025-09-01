import 'shared_pref_initialization.dart';

class SharedPrefManager
{
  SharedPrefManager._internal();
  factory SharedPrefManager() => _instance;
  static final SharedPrefManager _instance = SharedPrefManager._internal();

  ///[Theme_KEY]
  static const String _themeKey = 'theme_mode'; // 'light' or 'dark'
  ///[Local_KEY]
  static const String _localeKey = 'locale_lang'; // 'en' or 'ar'
  ///[First_Launch]
  static const String _firstLaunch = 'first_launch';
  ///[Token_KEY]
  //static const String _tokenKey = 'auth_token';

  /// [Theme]
  String get themeMode => SharedPrefInit.prefs.getString(_themeKey) ?? 'dark';
  Future<void> setThemeMode(String mode) => SharedPrefInit.prefs.setString(_themeKey, mode);

  /// [Localization]
  String get localeLang => SharedPrefInit.prefs.getString(_localeKey) ?? 'ar';
  Future<void> setLocaleLang(String lang) => SharedPrefInit.prefs.setString(_localeKey, lang);

  /// [First_Launch]
  int get firstLaunch => SharedPrefInit.prefs.getInt(_firstLaunch) ?? 1;
  Future<void> setFirstLaunch(int first) => SharedPrefInit.prefs.setInt(_firstLaunch, first);

  /// [TOKEN]
  // String? get token => SharedPrefInit.prefs.getString(_tokenKey);
  // Future<void> setToken(String token) => SharedPrefInit.prefs.setString(_tokenKey, token);
  // Future<void> clearToken() => SharedPrefInit.prefs.remove(_tokenKey);
  
}
