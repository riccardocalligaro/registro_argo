import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:registro_argo/presentation/global/theme/theme_data/text_styles.dart';

final material = ThemeData(
  primarySwatch: Colors.green,
  accentColor: Colors.green,
  brightness: Brightness.light,
  fontFamily: 'Montserrat',
  //canvasColor: Colors.white,
  primaryIconTheme: IconThemeData(
    color: Colors.black,
  ),
  primaryTextTheme: TextTheme(
    title: TextStyle(color: Colors.black),
    headline: HeadingSmall.copyWith(color: Colors.black),
    body1: BodyStyle1.copyWith(color: Colors.black),
  ),
);

final cupertino = CupertinoThemeData(
  brightness: Brightness.light,
);
