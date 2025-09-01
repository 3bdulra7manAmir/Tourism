import 'dart:developer';
import 'font_manager_base.dart';
import 'font_manager_cairo.dart';
import 'font_manager_roboto.dart';

class AppFonts
{

  AppFonts._();
  static AppFonts? _instance;

  static AppFonts get i
  {
    _instance ??= AppFonts._();
    return _instance!;
  }

  static FontManagerBase get font
  {
    try
    {
      return i._fonts;
    }
    catch (e, stack)
    {
      log('Erro in get font: $e ,, Stack: $stack');
      return FontRoboto();
    }
  }

  String language = 'ar';
  set langCode(String code)
  {
    try
    {
      if (code.isEmpty)
      {
        return;
      }
      language = code.toLowerCase();
    }
    on Exception catch (e, stack)
    {
      log('Erro in font Language: $e ,, Stack: $stack');
    }
  }

  FontManagerBase get _fonts
  {
    try
    {
      if (language == 'ar')
      {
        return FontCairo();
      }
      else
      {
        return FontCairo();
        //return FontRoboto(); // IF U WANNA USE A FONT FOR "EN" AND ANOTHER FOR "AR"
      }
    }
    catch (e, stack)
    {
      log('Erro in font Language: $e ,, Stack: $stack');
      return FontRoboto();
    }
  }
}
