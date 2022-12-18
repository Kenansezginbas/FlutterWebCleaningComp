import 'package:flutter/material.dart';

class ColorManager {
  ColorManager._();
  static Color red = HexColor.fromHex("#6F160F");
  static Color blue = HexColor.fromHex("#1C46A0");
  static Color black = HexColor.fromHex("#000000");
  static Color white = HexColor.fromHex("#FFFFFF");
}

extension HexColor on Color {
  static fromHex(String stringHex) {
    stringHex = stringHex.replaceAll("#", "");
    if (stringHex.length == 6) {
      stringHex = "FF$stringHex";
    }
    return Color(int.parse(stringHex, radix: 16));
  }
}
