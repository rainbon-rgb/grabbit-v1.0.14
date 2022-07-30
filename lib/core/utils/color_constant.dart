import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color black900A2 = fromHex('#a2040404');

  static Color amber400 = fromHex('#ffd223');

  static Color bluegray100 = fromHex('#d9d9d9');

  static Color black9003f = fromHex('#3f000000');

  static Color gray200 = fromHex('#ececec');

  static Color amberA100 = fromHex('#fee16f');

  static Color gray300 = fromHex('#e6e3e3');

  static Color black9001e = fromHex('#1e000000');

  static Color black90099 = fromHex('#99000000');

  static Color black900 = fromHex('#000000');

  static Color black90060 = fromHex('#60000000');

  static Color bluegray400 = fromHex('#888888');

  static Color whiteA700 = fromHex('#ffffff');

  static Color whiteA7007c = fromHex('#7cffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
