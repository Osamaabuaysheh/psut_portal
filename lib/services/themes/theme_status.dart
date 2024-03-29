import 'package:flutter/material.dart';

class AppTheme {
  // * theme is dark
  static bool isDark(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark;

  static bool hasArabicCharacters(String text) {
    RegExp regex = RegExp(
        "[\u0600-\u06ff]|[\u0750-\u077f]|[\ufb50-\ufc3f]|[\ufe70-\ufefc]");
    return regex.hasMatch(text);
  }

  // * current theme Text

  // * headline1
  static TextStyle h1(BuildContext context) =>
      Theme.of(context).textTheme.headline1 ?? const TextStyle();

  // * headline2
  static TextStyle h2(BuildContext context) =>
      Theme.of(context).textTheme.headline2 ?? const TextStyle();

  // * headline3
  static TextStyle h3(BuildContext context) =>
      Theme.of(context).textTheme.headline3 ?? const TextStyle();

  // * headline4
  static TextStyle h4(BuildContext context) =>
      Theme.of(context).textTheme.headline4 ?? const TextStyle();

  // * headline5
  static TextStyle h5(BuildContext context) =>
      Theme.of(context).textTheme.headline5 ?? const TextStyle();

  // * headline6
  static TextStyle h6(BuildContext context) =>
      Theme.of(context).textTheme.headline6 ?? const TextStyle();

  // * bodyText1
  static TextStyle b1(BuildContext context) =>
      Theme.of(context).textTheme.bodyText1 ?? const TextStyle();

  // * bodyText2
  static TextStyle b2(BuildContext context) =>
      Theme.of(context).textTheme.bodyText2 ?? const TextStyle();

  // * subtitle1
  static TextStyle s1(BuildContext context) =>
      Theme.of(context).textTheme.subtitle1 ?? const TextStyle();

  // * subtitle2
  static TextStyle s2(BuildContext context) =>
      Theme.of(context).textTheme.subtitle2 ?? const TextStyle();

  // * button
  static TextStyle btn(BuildContext context) =>
      Theme.of(context).textTheme.button ?? const TextStyle();

  // * screen width
  static double sw(BuildContext context) => MediaQuery.of(context).size.width;

  // * screen height
  static double sh(BuildContext context) => MediaQuery.of(context).size.height;
}
