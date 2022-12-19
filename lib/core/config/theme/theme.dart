import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'colors.dart';

/// App Theme.
class Theme {
  static ThemeData lightTheme() {
    final _lightTextTheme = _baseTheme.textTheme
        .apply(
          bodyColor: AppColors.lightThemeTextColor,
          fontFamily: 'Yekan',
          displayColor: AppColors.lightThemeTextColor,
        )
        .merge(const TextTheme(button: TextStyle(color: Colors.white)));

    return _baseTheme.copyWith(
      /// Brightness
      brightness: Brightness.light,

      /// Colors
      primaryColor: AppColors.primaryColor,
      accentColor: AppColors.secondaryColor,
      scaffoldBackgroundColor: AppColors.lightThemeBgColor,
      // input's hint color
      hintColor: const Color(0xffBDBDBD),

      /// TextTheme
      textTheme: _lightTextTheme,

      /// AppBar
      appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        backgroundColor: Colors.white,
        foregroundColor: Color(0xff212121),
        iconTheme: IconThemeData(color: Color(0xff8B9098)),
        elevation: 0,
      ),

      /// Inputs like: TextField, TextFormField and etc.
      inputDecorationTheme: _baseTheme.inputDecorationTheme.copyWith(
        border: _baseTheme.inputDecorationTheme.border?.copyWith(
          borderSide: const BorderSide(color: AppColors.lightThemeTextColor),
        ),
        focusedBorder: _baseTheme.inputDecorationTheme.border?.copyWith(
          borderSide: const BorderSide(color: Color(0xFF3B28CC)),
        ),
        enabledBorder: _baseTheme.inputDecorationTheme.border?.copyWith(
          borderSide:
              const BorderSide(color: Color.fromARGB(255, 197, 197, 197)),
        ),
        labelStyle: _baseTheme.textTheme.subtitle2!
            .copyWith(color: const Color.fromARGB(255, 82, 82, 82)),
        hintStyle: const TextStyle(color: Color.fromARGB(255, 123, 123, 123)),
        helperStyle: const TextStyle(color: Color.fromARGB(255, 91, 90, 90)),
      ),

      /// BottomNavigation
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
      ),

      /// FloatingActionButton
      // floatingActionButtonTheme: const FloatingActionButtonThemeData(
      //   backgroundColor: AppColors.lightThemePrimaryBlue,
      //   foregroundColor: AppColors.white,
      // ),

      /// BottomSheet
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Colors.transparent,
        elevation: 24,
      ),
    );
  }

  static ThemeData get _baseTheme {
    return ThemeData(
      /// Font Family for all widgets
      // fontFamily: G.appFontFamily,
      fontFamily: 'Yekan',

      /// TextTheme
      textTheme: _textTheme,

      /// Inputs like: TextField, TextFormField and etc.
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 20,
        ),
        hintStyle: _textTheme.bodyText1,
        labelStyle: _textTheme.bodyText1,
        border: const OutlineInputBorder(),
      ),
    );
  }

  static TextTheme get _textTheme {
    return const TextTheme(
      headline1: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 30,
        height: 40 / 24,
      ),
      headline2: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 28,
        height: 40 / 24,
      ),
      headline3: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 26,
        height: 40 / 24,
      ),
      headline4: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 24,
        height: 40 / 24,
      ),
      headline5: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 20,
        height: 36 / 20,
      ),
      headline6: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 18,
        height: 32 / 18,
      ),
      subtitle1: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 16,
        height: 28 / 16,
      ),
      subtitle2: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        height: 24 / 14,
      ),
      bodyText1: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 16,
        height: 24 / 16,
      ),
      bodyText2: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        height: 24 / 14,
      ),
      button: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 16,
        color: Colors.white,
        height: 25 / 16,
      ),
      caption: TextStyle(
        fontWeight: FontWeight.w300,
        fontSize: 12,
        height: 20 / 12,
      ),
      overline: TextStyle(
        fontWeight: FontWeight.w300,
        fontSize: 10,
        height: 16 / 10,
      ),
    );
  }
}
