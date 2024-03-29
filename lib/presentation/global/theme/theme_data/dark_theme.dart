import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:registro_argo/presentation/global/theme/theme_data/text_styles.dart';

final material = ThemeData(
    primarySwatch: Colors.green,
    accentColor: Colors.green,
    primaryColor: Colors.green,
    brightness: Brightness.dark,
    fontFamily: 'Montserrat',
    appBarTheme: AppBarTheme(
      elevation: 0,
      color: Colors.grey[900],
      brightness: Brightness.dark,
    ),
    primaryTextTheme: TextTheme(
      title: TextStyle(color: Colors.white),
      headline: HeadingSmall.copyWith(color: Colors.white),
      body1: BodyStyle1.copyWith(color: Colors.white),
    ),
    cardTheme: CardTheme(color: Colors.grey[900]));

final cupertino = CupertinoThemeData(
  brightness: Brightness.dark,
);
