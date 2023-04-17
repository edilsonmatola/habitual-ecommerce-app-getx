import 'dart:ui';

import 'package:flutter/material.dart';

///* Color Styles
class AppColors {
  /* 
  * ========= Primary Colors ==================
   */
  static Color yellow500 = fromHex('#F9D262');

  static Color yellow300 = fromHex('#FFE393');

  static Color yellow100 = fromHex('#FFF8EF');

  /* 
  * ========= Neutral Colors ==================
   */

  static Color neutral900 = fromHex('#1F2223');

  static Color neutral800 = fromHex('#363939');

  static Color neutral700 = fromHex('#57595A');

  static Color neutral600 = fromHex('#797A7B');

  static Color neutral500 = fromHex('#8E9090');

  static Color neutral400 = fromHex('#B1B2B2');

  static Color neutral300 = fromHex('#D2D3D3');

  static Color neutral200 = fromHex('#EAEAEA');

  static Color neutral100 = fromHex('#F6F6F6');

  static Color white = fromHex('#FFFFFF');

  /* 
  * ========= Green Colors ==================
   */

  static Color green500 = fromHex('#B4D479');

  static Color green300 = fromHex('#D8E4C2');

  static Color green100 = fromHex('#EEF2E5');

  /* 
  * ========= Red Colors ==================
   */

  static Color red500 = fromHex('#EA8389');

  static Color red300 = fromHex('#E2BDBF');

  static Color red100 = fromHex('#F3E6E7');

  /* 
  * ========= Blue Colors ==================
   */

  static Color blue500 = fromHex('#81B5E9');

  static Color blue300 = fromHex('#C1D3E5');

  static Color blue100 = fromHex('#E6EEF5');

  /* 
  * ========= Purple Colors ==================
   */

  static Color purple500 = fromHex('#DEAAEF');

  static Color purple300 = fromHex('#E7D1EE');

  static Color purple100 = fromHex('#F6EFF8');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) {
      buffer.write('ff');
    }
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(
      int.parse(buffer.toString(), radix: 16),
    );
  }
}
