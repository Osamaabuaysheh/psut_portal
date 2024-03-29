import 'package:flutter/material.dart';

class AppColors {
  // * Convert Color from Hex to type Flutter 0xFFdddddd
  static Color _colorFromHex(String hexColor, [String opcity = 'FF']) {
    final hexCode = hexColor.replaceAll('#', '');
    return Color(int.parse(opcity + hexCode, radix: 16));
  }

  // * loading
  static final Color lightLoading = _colorFromHex('#46B5F6');
  static final Color darkLoading = _colorFromHex('#E1306C');

  // * color  instagram
  static final Color royalPurple = _colorFromHex('#833AB4');
  static final Color mediumRedViolet = _colorFromHex('#C13584');
  static final Color ceriseRed = _colorFromHex('#E1306C');
  static final Color torchReda = _colorFromHex('#FD1D1D');
  static final Color flamingo = _colorFromHex('#F56040');
  static final Color crusta = _colorFromHex('#F77737');
  static final Color yellowOrange = _colorFromHex('#FCAF45');
  static final Color salomie = _colorFromHex('#FFDC80');
  static final Color errorSnackBar = _colorFromHex('#f68a1c');
  static final Color successSnackBar = _colorFromHex('#4e9a51');

  // * colors
  static final Color darkMode = _colorFromHex('#3A3B3C');
  static final Color bgLightGrey = _colorFromHex('#FAFAFA');
  static final Color bgWhite = _colorFromHex('#FFFFFF');
  static final Color bgBlack = _colorFromHex('#000000');
  static final Color bgCursor = _colorFromHex('#3A3B3C');
  static final Color bgGrey = _colorFromHex('#C8C8C8');
  static final Color bgGreen = _colorFromHex('#A5D6A7');
  static final Color bgGreenBold = _colorFromHex('#1B5E20');
  static final Color blueGradient = _colorFromHex('#0E2C71');
  static final Color skyBlueGradient = _colorFromHex('#2AC4F4');
  static final Color yellowGradient = _colorFromHex('#FFCA17');
  static Color blue = _colorFromHex("#0E2C71");
  static Color white = _colorFromHex("#FFFFFF");
  static Color lightBlue = _colorFromHex("#2AC4F4");
  static Color grey = _colorFromHex("#707070");
  static Color searchColor = _colorFromHex("##F4F4F4");

  // * text Color
  static final Color textGrey = _colorFromHex('#C8C8C8');

  // * logo color
  static final List<Color> colorLogo = [
    royalPurple,
    mediumRedViolet,
    ceriseRed,
    torchReda,
    flamingo,
    crusta,
    yellowOrange,
    salomie,
  ];

  // * btn Color
  static final List<Color> btnColor = [
    AppColors.mainColor.withOpacity(0.5),
    AppColors.mainColor,
  ];

  // * color grey
  static final List<Color> colorGrey = [
    AppColors.bgGrey,
    AppColors.bgGrey,
  ];

  //* MAIN COLORS FOR PUST PORTAL APP
  static final Color mainColor = _colorFromHex('#0E2C71');
  static final Color secondaryColor = _colorFromHex('#2AC4F4');

  //*
  static final List<Color> mainGradient = [
    AppColors.blueGradient,
    AppColors.skyBlueGradient,
  ];
}
