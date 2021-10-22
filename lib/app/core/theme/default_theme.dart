import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DefaultTheme {
  Color primaryColor = Colors.black87;
  Color secondaryColor = Colors.blueGrey.shade800;
  Color canvasColor = Colors.grey.shade200;

  ThemeData get defaultTheme => ThemeData(
        brightness: Brightness.light,
        fontFamily: 'Sailec Light',
        canvasColor: canvasColor,
        visualDensity: VisualDensity.standard,
        colorScheme: ColorScheme.light(
          primary: primaryColor,
          secondary: secondaryColor,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          foregroundColor: primaryColor,
          elevation: 0.0,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: canvasColor,
            statusBarIconBrightness: Brightness.dark,
          ),
        ),
      );
}
