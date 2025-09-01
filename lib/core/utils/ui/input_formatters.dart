import 'package:flutter/services.dart';

abstract class AppInputFormatters
{
  AppInputFormatters._();

  static List<TextInputFormatter> get digitsOnly => [FilteringTextInputFormatter.digitsOnly];
  static List<TextInputFormatter> get digitsOnlyWithLength => [FilteringTextInputFormatter.digitsOnly, LengthLimitingTextInputFormatter(4),];
  static List<TextInputFormatter> get lettersOnly => [_FullNameFormatter()];
  static List<TextInputFormatter> get expireDate => [ExpiryDateInputFormatter()];
}

class _FullNameFormatter extends TextInputFormatter
{
  static final _regExp = RegExp(r'^[a-zA-Z\u0600-\u06FF]* ?[a-zA-Z\u0600-\u06FF]*$');

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue)
  {
    final newText = newValue.text;

    if (_regExp.hasMatch(newText))
    {
      // Only allow one space
      final spaceCount = ' '.allMatches(newText).length;
      if (spaceCount <= 1)
      {
        return newValue;
      }
    }
    return oldValue; // Reject changes if invalid
  }
}


class ExpiryDateInputFormatter extends TextInputFormatter
{
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue)
  {
    var text = newValue.text.replaceAll('/', '');
    if (text.length > 4)
    {
      text = text.substring(0, 4);
    }

    final buffer = StringBuffer();
    for (int i = 0; i < text.length; i++)
    {
      if (i == 2) buffer.write('/');
      buffer.write(text[i]);
    }

    return TextEditingValue(
      text: buffer.toString(),
      selection: TextSelection.collapsed(offset: buffer.length),
    );
  }
}
