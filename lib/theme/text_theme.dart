import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/theme/color_schemes.g.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

TextTheme? textThemeApp(bool mode){

  const regular = FontWeight.w400;
  const medium = FontWeight.w500;
  const semiBold = FontWeight.w600;
  const bold = FontWeight.w700;
  const extraBold = FontWeight.w800;


  final TextTheme textThemeLight = TextTheme(
    displayLarge: GoogleFonts.stickNoBills(fontWeight: semiBold, fontSize: 80.px, color: lightColorScheme.primary),
    displayMedium: GoogleFonts.notoSans(fontWeight: bold, fontSize: 40.px, color: lightColorScheme.primary),
    displaySmall: GoogleFonts.notoSans(fontWeight: bold, fontSize: 28.px, color: lightColorScheme.onBackground),
    headlineLarge: GoogleFonts.notoSans(fontWeight: bold, fontSize: 20.px, color: lightColorScheme.onBackground),
    headlineMedium: GoogleFonts.notoSans(fontWeight: semiBold, fontSize: 20.px, color: lightColorScheme.primary),
    headlineSmall: GoogleFonts.notoSans(fontWeight: semiBold, fontSize: 24.px, color: lightColorScheme.onPrimaryContainer),
    bodySmall: GoogleFonts.notoSans(fontWeight: bold, fontSize: 16.px, color: lightColorScheme.onSurface),
    titleMedium: GoogleFonts.notoSans(fontWeight: semiBold, fontSize: 16.px, color: lightColorScheme.onPrimaryContainer),
    titleSmall: GoogleFonts.notoSans(fontWeight: medium, fontSize: 14.px, color: lightColorScheme.onSurface),
    bodyLarge: GoogleFonts.notoSans(fontWeight: medium, fontSize: 16.px, color: lightColorScheme.onPrimaryContainer),
    bodyMedium: GoogleFonts.notoSans(fontWeight: regular, fontSize: 14.px, color: lightColorScheme.onSurface),
    labelSmall: GoogleFonts.notoSans(fontWeight: medium, fontSize: 12.px, color: lightColorScheme.onPrimaryContainer),
    labelLarge: GoogleFonts.notoSans(fontWeight: semiBold, fontSize: 14.px, color: lightColorScheme.onPrimaryContainer),
  );

  final TextTheme textThemeDark = TextTheme(
    displayLarge: GoogleFonts.stickNoBills(fontWeight: semiBold, fontSize: 80.px, color: darkColorScheme.primary),
    displayMedium: GoogleFonts.notoSans(fontWeight: bold, fontSize: 40.px, color: darkColorScheme.primary),
    displaySmall: GoogleFonts.notoSans(fontWeight: bold, fontSize: 28.px, color: darkColorScheme.onBackground),
    headlineLarge: GoogleFonts.notoSans(fontWeight: bold, fontSize: 20.px, color: darkColorScheme.onBackground),
    headlineMedium: GoogleFonts.notoSans(fontWeight: semiBold, fontSize: 20.px, color: darkColorScheme.primary),
    headlineSmall: GoogleFonts.notoSans(fontWeight: semiBold, fontSize: 24.px, color: darkColorScheme.onPrimaryContainer),
    bodySmall: GoogleFonts.notoSans(fontWeight: bold, fontSize: 16.px, color: darkColorScheme.onSurface),
    titleMedium: GoogleFonts.notoSans(fontWeight: semiBold, fontSize: 16.px, color: darkColorScheme.onPrimaryContainer),
    titleSmall: GoogleFonts.notoSans(fontWeight: medium, fontSize: 14.px, color: darkColorScheme.onSurface),
    bodyLarge: GoogleFonts.notoSans(fontWeight: medium, fontSize: 16.px, color: darkColorScheme.onPrimaryContainer),
    bodyMedium: GoogleFonts.notoSans(fontWeight: regular, fontSize: 14.px, color: darkColorScheme.onSurface),
    labelSmall: GoogleFonts.notoSans(fontWeight: medium, fontSize: 12.px, color: darkColorScheme.onPrimaryContainer),
    labelLarge: GoogleFonts.notoSans(fontWeight: semiBold, fontSize: 14.px, color: darkColorScheme.onPrimaryContainer),
  );


  return mode ? textThemeDark : textThemeLight;

}