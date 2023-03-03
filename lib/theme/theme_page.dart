

import 'package:flutter/material.dart';
import 'package:portfolio/theme/color_schemes.g.dart';
import 'package:portfolio/theme/text_theme.dart';

ThemeData? themeApp( bool mode ){

  final ThemeData themeLightApp = ThemeData(
    useMaterial3: true, 
    textTheme: textThemeApp(false),
    brightness: Brightness.light, 
    primaryColor: lightColorScheme.primary,
    appBarTheme: AppBarTheme(
      backgroundColor: lightColorScheme.background,
      elevation: 0,
      iconTheme: IconThemeData(color: lightColorScheme.onBackground),
    ),
    iconTheme: IconThemeData(color: lightColorScheme.primary),
    canvasColor: lightColorScheme.background,
    scaffoldBackgroundColor: lightColorScheme.background,
    highlightColor: Colors.transparent,
    dividerColor: darkColorScheme.outline,
    applyElevationOverlayColor: true,
    cardTheme: CardTheme(
      surfaceTintColor: lightColorScheme.background,
      
      elevation: 4.0,
      color: lightColorScheme.background,
      shape: RoundedRectangleBorder(
        side: BorderSide(
              width: 1,
              color: lightColorScheme.outline
            ),
        borderRadius: BorderRadius.circular(10.0),
      )
    ),
    chipTheme: ChipThemeData(
      elevation: 1.0,
      padding: const EdgeInsets.all(4.0),
      backgroundColor: lightColorScheme.background,
      shape: RoundedRectangleBorder(
        side: BorderSide(
              width: 1,
              color: lightColorScheme.outline
            ),
        borderRadius: BorderRadius.circular(12.0),
      )
    ),
    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(4.0)),
        borderSide: BorderSide(width: 2.0, color: lightColorScheme.primary)
      ),
      border: OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(4.0)),
        borderSide: BorderSide(width: 2.0, color: lightColorScheme.outline)
      ),
    ),
    navigationRailTheme: NavigationRailThemeData(
      labelType: NavigationRailLabelType.all,
      backgroundColor: lightColorScheme.surface,
      elevation: 1,
      groupAlignment: 0,
      useIndicator: true,
      indicatorColor: lightColorScheme.onSurface,
      selectedIconTheme: IconThemeData(color: lightColorScheme.surfaceVariant, size: 20),
      unselectedIconTheme: IconThemeData(color: lightColorScheme.onSurface, size: 20),
      selectedLabelTextStyle: TextStyle(color: lightColorScheme.onSurface, fontSize: 12, fontWeight: FontWeight.w600),
      unselectedLabelTextStyle: TextStyle(color: lightColorScheme.onSurfaceVariant, fontSize: 12, fontWeight: FontWeight.w600),

    ), colorScheme: lightColorScheme.copyWith(error: lightColorScheme.error)
  );




  final ThemeData themeDarkApp = ThemeData(
    useMaterial3: true, 
    textTheme: textThemeApp(true),
    primaryColor: darkColorScheme.primary,
    appBarTheme: AppBarTheme(
      backgroundColor: darkColorScheme.background,
      elevation: 1,
      iconTheme: IconThemeData(color: darkColorScheme.onBackground),
    ),
    iconTheme: IconThemeData(color: darkColorScheme.primary),
    canvasColor: darkColorScheme.background,
    scaffoldBackgroundColor: darkColorScheme.background,
    highlightColor: Colors.transparent,
    dividerColor: darkColorScheme.outline,
    applyElevationOverlayColor: true,
    brightness: Brightness.dark,
    chipTheme: ChipThemeData(
      elevation: 1.0,
      padding: const EdgeInsets.all(4.0),
      backgroundColor: darkColorScheme.background,
      shape: RoundedRectangleBorder(
        side: BorderSide(
              width: 1,
              color: darkColorScheme.outline
            ),
        borderRadius: BorderRadius.circular(10.0),
      )
    ),
    cardTheme: CardTheme(
      surfaceTintColor: darkColorScheme.background,
      elevation: 15.0,
      color: darkColorScheme.background,
      shadowColor: darkColorScheme.onBackground,
      shape: RoundedRectangleBorder(
        side: BorderSide(
              width: 1,
              color: darkColorScheme.outline
            ),
        borderRadius: BorderRadius.circular(12.0),
      )
    ),
    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(4.0)),
        borderSide: BorderSide(width: 2.0, color: darkColorScheme.primary)
      ),
      border: OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(4.0)),
        borderSide: BorderSide(width: 2.0, color: darkColorScheme.outline)
      ),
    ),
    navigationRailTheme: NavigationRailThemeData(
      labelType: NavigationRailLabelType.all,
      backgroundColor: darkColorScheme.surface,
      elevation: 1,
      groupAlignment: 0,
      useIndicator: true,
      indicatorColor: darkColorScheme.onSurface,
      selectedIconTheme: IconThemeData(color: darkColorScheme.surfaceVariant, size: 20),
      unselectedIconTheme: IconThemeData(color: darkColorScheme.onSurface, size: 20),
      selectedLabelTextStyle: TextStyle(color: darkColorScheme.onSurface, fontSize: 12, fontWeight: FontWeight.w600),
      unselectedLabelTextStyle: TextStyle(color: darkColorScheme.onSurfaceVariant, fontSize: 12, fontWeight: FontWeight.w600),

    ), colorScheme: darkColorScheme.copyWith(error: darkColorScheme.error)
  );


  return mode ? themeDarkApp : themeLightApp;


}