// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

const kThemeModeKey = '__theme_mode__';
SharedPreferences? _prefs;

abstract class FlutterFlowTheme {
  static Future<void> initialize() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static ThemeMode get themeMode {
    final darkMode = _prefs?.getBool(kThemeModeKey);
    return darkMode == null
        ? ThemeMode.system
        : darkMode ? ThemeMode.dark : ThemeMode.light;
  }

  static void saveThemeMode(ThemeMode mode) {
    if (mode == ThemeMode.system) {
      _prefs?.remove(kThemeModeKey);
    } else {
      _prefs?.setBool(kThemeModeKey, mode == ThemeMode.dark);
    }
  }

  static FlutterFlowTheme of(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? DarkModeTheme()
        : LightModeTheme();
  }

  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary;
  late Color secondary;
  late Color tertiary;
  late Color alternate;
  late Color primaryText;
  late Color secondaryText;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color accent1;
  late Color accent2;
  late Color accent3;
  late Color accent4;
  late Color success;
  late Color warning;
  late Color error;
  late Color info;

  late Color primaryBtnText;
  late Color lineColor;
  late Color grayIcon;
  late Color gray200;
  late Color gray600;
  late Color black600;
  late Color tertiary400;
  late Color textColor;
  late Color maximumBlueGreen;
  late Color plumpPurple;
  late Color platinum;
  late Color ashGray;
  late Color darkSeaGreen;
  late Color customColor1;

  @Deprecated('Use displaySmallFamily instead')
  String get title1Family => displaySmallFamily;
  @Deprecated('Use displaySmall instead')
  TextStyle get title1 => typography.displaySmall;
  @Deprecated('Use headlineMediumFamily instead')
  String get title2Family => typography.headlineMediumFamily;
  @Deprecated('Use headlineMedium instead')
  TextStyle get title2 => typography.headlineMedium;
  @Deprecated('Use headlineSmallFamily instead')
  String get title3Family => typography.headlineSmallFamily;
  @Deprecated('Use headlineSmall instead')
  TextStyle get title3 => typography.headlineSmall;
  @Deprecated('Use titleMediumFamily instead')
  String get subtitle1Family => typography.titleMediumFamily;
  @Deprecated('Use titleMedium instead')
  TextStyle get subtitle1 => typography.titleMedium;
  @Deprecated('Use titleSmallFamily instead')
  String get subtitle2Family => typography.titleSmallFamily;
  @Deprecated('Use titleSmall instead')
  TextStyle get subtitle2 => typography.titleSmall;
  @Deprecated('Use bodyMediumFamily instead')
  String get bodyText1Family => typography.bodyMediumFamily;
  @Deprecated('Use bodyMedium instead')
  TextStyle get bodyText1 => typography.bodyMedium;
  @Deprecated('Use bodySmallFamily instead')
  String get bodyText2Family => typography.bodySmallFamily;
  @Deprecated('Use bodySmall instead')
  TextStyle get bodyText2 => typography.bodySmall;

  String get displayLargeFamily => typography.displayLargeFamily;
  TextStyle get displayLarge => typography.displayLarge;
  String get displayMediumFamily => typography.displayMediumFamily;
  TextStyle get displayMedium => typography.displayMedium;
  String get displaySmallFamily => typography.displaySmallFamily;
  TextStyle get displaySmall => typography.displaySmall;
  String get headlineLargeFamily => typography.headlineLargeFamily;
  TextStyle get headlineLarge => typography.headlineLarge;
  String get headlineMediumFamily => typography.headlineMediumFamily;
  TextStyle get headlineMedium => typography.headlineMedium;
  String get headlineSmallFamily => typography.headlineSmallFamily;
  TextStyle get headlineSmall => typography.headlineSmall;
  String get titleLargeFamily => typography.titleLargeFamily;
  TextStyle get titleLarge => typography.titleLarge;
  String get titleMediumFamily => typography.titleMediumFamily;
  TextStyle get titleMedium => typography.titleMedium;
  String get titleSmallFamily => typography.titleSmallFamily;
  TextStyle get titleSmall => typography.titleSmall;
  String get labelLargeFamily => typography.labelLargeFamily;
  TextStyle get labelLarge => typography.labelLarge;
  String get labelMediumFamily => typography.labelMediumFamily;
  TextStyle get labelMedium => typography.labelMedium;
  String get labelSmallFamily => typography.labelSmallFamily;
  TextStyle get labelSmall => typography.labelSmall;
  String get bodyLargeFamily => typography.bodyLargeFamily;
  TextStyle get bodyLarge => typography.bodyLarge;
  String get bodyMediumFamily => typography.bodyMediumFamily;
  TextStyle get bodyMedium => typography.bodyMedium;
  String get bodySmallFamily => typography.bodySmallFamily;
  TextStyle get bodySmall => typography.bodySmall;

  Typography get typography => ThemeTypography(this);
}

class LightModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  final primaryColorHex = String.fromEnvironment('PRIMARY_COLOR', defaultValue: '#000000');
  final secondaryColorHex = String.fromEnvironment('SECONDARY_COLOR', defaultValue: '#FFFFFF');

  LightModeTheme() {
    primary = Color(int.parse(primaryColorHex.replaceFirst('#', '0xFF')));
    secondary = Color(int.parse(secondaryColorHex.replaceFirst('#', '0xFF')));
    tertiary = const Color(0xFFEE8B60);
    alternate = const Color(0xFFF1F4F8);
    primaryText = const Color(0xFF1D2429);
    secondaryText = const Color(0xFF57636C);
    primaryBackground = const Color(0xFFF1F4F8);
    secondaryBackground = const Color(0xFFFFFFFF);
    accent1 = const Color(0xFF616161);
    accent2 = const Color(0xFF757575);
    accent3 = const Color(0xFFE0E0E0);
    accent4 = const Color(0xFFEEEEEE);
    success = const Color(0xFF04A24C);
    warning = const Color(0xFFFCDC0C);
    error = const Color(0xFFE21C3D);
    info = const Color(0xFF1C4494);

    primaryBtnText = const Color(0xFFFFFFFF);
    lineColor = const Color(0xFFE0E3E7);
    grayIcon = const Color(0xFF95A1AC);
    gray200 = const Color(0xFFDBE2E7);
    gray600 = const Color(0xFF6A6D73);
    black600 = const Color(0xFF424B6D);
    tertiary400 = const Color(0xFFB8C3CC);
    textColor = const Color(0xFF101213);
    maximumBlueGreen = const Color(0xFF4DB6AC);
    plumpPurple = const Color(0xFF6D28D9);
    platinum = const Color(0xFFE5E5E5);
    ashGray = const Color(0xFFB8B8B8);
    darkSeaGreen = const Color(0xFF9CC1B6);
    customColor1 = const Color(0xFF9A9A9A);
  }
}

class DarkModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  DarkModeTheme() {
    primary = const Color(0xFF4D6C78);
    secondary = const Color(0xFF7F9A9F);
    tertiary = const Color(0xFF121C25);
    alternate = const Color(0xFF2D3C47);
    primaryText = const Color(0xFFFFFFFF);
    secondaryText = const Color(0xFF9B9B9B);
    primaryBackground = const Color(0xFF121C25);
    secondaryBackground = const Color(0xFF1F2937);
    accent1 = const Color(0xFF1C1F1F);
    accent2 = const Color(0xFF2D3C47);
    accent3 = const Color(0xFF5B5B5B);
    accent4 = const Color(0xFF6C757D);
    success = const Color(0xFF009688);
    warning = const Color(0xFFFFC107);
    error = const Color(0xFFF44336);
    info = const Color(0xFF1976D2);

    primaryBtnText = const Color(0xFFFFFFFF);
    lineColor = const Color(0xFF2C2F33);
    grayIcon = const Color(0xFF7F8C8D);
    gray200 = const Color(0xFF344952);
    gray600 = const Color(0xFF2C2F33);
    black600 = const Color(0xFF121C25);
    tertiary400 = const Color(0xFF4B4B4B);
    textColor = const Color(0xFFFFFFFF);
    maximumBlueGreen = const Color(0xFF00796B);
    plumpPurple = const Color(0xFF7E57C2);
    platinum = const Color(0xFFB0BEC5);
    ashGray = const Color(0xFFCFD8DC);
    darkSeaGreen = const Color(0xFF004D40);
    customColor1 = const Color(0xFF37474F);
  }
}
