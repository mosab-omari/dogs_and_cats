import 'package:flutter/material.dart';

import '../../../gen/fonts.gen.dart';
import '../colors/app_colors.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    navigationBarTheme: NavigationBarThemeData(
        iconTheme: const MaterialStatePropertyAll(
            IconThemeData(color: AppColors.white)),
        labelTextStyle: MaterialStatePropertyAll(
            AppTheme.s10w500.copyWith(color: AppColors.grey4))),
    // unselectedWidgetColor: AppColors.shade10,
    appBarTheme: const AppBarTheme(
        color: AppColors.primary2, titleTextStyle: AppTheme.s24w700),
    primaryColor: AppColors.primary3,
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.grey1,
    textTheme: const TextTheme(

      headlineMedium: headlineMedium,
      headlineSmall: headlineSmall,
      headlineLarge: headlineLarge,
      //
      titleMedium: titleMedium,

      labelMedium: labelMedium,
      //
      bodyMedium: bodyMedium,
    ),

    iconTheme: const IconThemeData(color: AppColors.white),
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary2).copyWith(
      background: AppColors.backgroundColor,
      surface: AppColors.white
    ),
  );

  static const String fontGeneralSans = FontFamily.generalSans;

  static const String headlineFont = fontGeneralSans;
  static const String bodyFont = fontGeneralSans;

  static const TextStyle bodyMedium = TextStyle(
    fontFamily: bodyFont,
    fontWeight: FontWeight.w400,
    fontSize: 13,
  );

  static const TextStyle s10w500 = TextStyle(
    fontFamily: bodyFont,
    fontWeight: FontWeight.w500,
    fontSize: 10,
  );

  static const TextStyle s13w700 = TextStyle(
    fontFamily: bodyFont,
    fontWeight: FontWeight.w700,
    fontSize: 13,
  );
  static const TextStyle s17w400 = TextStyle(
    fontFamily: bodyFont,
    fontWeight: FontWeight.w400,
    fontSize: 17,
  );

  static const TextStyle s15w500 = TextStyle(
    fontFamily: bodyFont,
    fontWeight: FontWeight.w500,
    fontSize: 15,
  );
  static const TextStyle s17w500 = TextStyle(
    fontFamily: bodyFont,
    fontWeight: FontWeight.w500,
    fontSize: 17,
  );
  static const TextStyle s14w500 = TextStyle(
    fontFamily: bodyFont,
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );

  static const TextStyle s20w600 = TextStyle(
    fontFamily: bodyFont,
    fontWeight: FontWeight.w600,
    fontSize: 20,
  );

  static const TextStyle s16w700 = TextStyle(
    fontFamily: bodyFont,
    fontWeight: FontWeight.w700,
    fontSize: 16,
  );

  static const TextStyle s12w600 = TextStyle(
    fontFamily: bodyFont,
    fontSize: 12,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle s13w500 = TextStyle(
    fontFamily: bodyFont,
    fontSize: 13,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle s14w400 = TextStyle(
    fontFamily: bodyFont,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );

  static const TextStyle s32w700 = TextStyle(
    fontFamily: bodyFont,
    fontWeight: FontWeight.w700,
    fontSize: 32,
  );

  static const TextStyle s24w700 = TextStyle(
    fontFamily: bodyFont,
    fontWeight: FontWeight.w700,
    fontSize: 24,
  );

  static const TextStyle s15w600 = TextStyle(
    fontFamily: bodyFont,
    fontWeight: FontWeight.w600,
    fontSize: 15,
  );

  static const TextStyle s12w400 = TextStyle(
    fontFamily: bodyFont,
    fontWeight: FontWeight.w400,
    fontSize: 12,
  );

  static const TextStyle s10w600 = TextStyle(
    fontFamily: bodyFont,
    fontWeight: FontWeight.w600,
    fontSize: 10,
  );

  static const TextStyle s14w700 = TextStyle(
    fontFamily: bodyFont,
    fontWeight: FontWeight.w700,
    fontSize: 14,
  );

  static const TextStyle s15w700 = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w700,
    fontFamily: bodyFont,
  );

  static const TextStyle s11w400 = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w400,
    fontFamily: bodyFont,
  );

  static const TextStyle s12w700 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w700,
    fontFamily: bodyFont,
  );

  static const TextStyle s10w400 = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    fontFamily: bodyFont,
  );

  static const TextStyle s15w400 = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    fontFamily: bodyFont,
  );

  static const TextStyle s19w800 = TextStyle(
    fontSize: 19,
    fontWeight: FontWeight.w800,
    fontFamily: bodyFont,
  );

  static const TextStyle s20w800 = TextStyle(
    fontFamily: bodyFont,
    fontWeight: FontWeight.w800,
    fontSize: 20,
  );

  static const TextStyle s13w600 = TextStyle(
    fontFamily: bodyFont,
    fontWeight: FontWeight.w600,
    fontSize: 13,
  );

  static const TextStyle s16w600 = TextStyle(
    fontFamily: bodyFont,
    fontWeight: FontWeight.w600,
    fontSize: 16,
  );

  static const TextStyle s13w400 = TextStyle(
    fontFamily: bodyFont,
    fontWeight: FontWeight.w400,
    fontSize: 13,
  );

  static const TextStyle s16w400 = TextStyle(
    fontSize: 14,
    fontFamily: bodyFont,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle s20w700 = TextStyle(
    fontFamily: bodyFont,
    fontWeight: FontWeight.w700,
    fontSize: 20,
  );

  static const TextStyle s24w800 = TextStyle(
    fontFamily: bodyFont,
    fontWeight: FontWeight.w800,
    fontSize: 24,
  );

  static const TextStyle s10w700 = TextStyle(
    fontSize: 10,
    fontFamily: bodyFont,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle s14w600 = TextStyle(
    fontFamily: bodyFont,
    fontWeight: FontWeight.w600,
    fontSize: 14,
  );

  static const TextStyle s17w900 = TextStyle(
    fontFamily: bodyFont,
    fontWeight: FontWeight.w900,
    fontSize: 17,
  );

  static const TextStyle s11w600 = TextStyle(
    fontFamily: bodyFont,
    fontWeight: FontWeight.w600,
    fontSize: 11,
  );

  static const TextStyle labelMedium = TextStyle(
    fontFamily: bodyFont,
    fontWeight: FontWeight.w400,
    color: AppColors.white,
    fontSize: 14,
  );

  static const TextStyle labelLarge = TextStyle(
    fontFamily: bodyFont,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
    fontSize: 16,
  );

  static const TextStyle subtitleMedium = TextStyle(
      fontFamily: bodyFont,
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: AppColors.grey5);

  static const TextStyle subtitleLarge = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    fontFamily: bodyFont,
    color: AppColors.grey6,
  );

  static const TextStyle titleMedium = TextStyle(
    fontFamily: bodyFont,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
    fontSize: 16,
  );

  static const TextStyle titleLarge = TextStyle(
    fontFamily: bodyFont,
    fontWeight: FontWeight.w800,
    color: AppColors.white,
    fontSize: 24,
  );

  static const TextStyle headlineButtonText = TextStyle(
    fontFamily: bodyFont,
    fontWeight: FontWeight.w600,
    fontSize: 17,
  );

  static const TextStyle headlineBorderedButtonText = TextStyle(
    fontFamily: bodyFont,
    fontWeight: FontWeight.w500,
    color: AppColors.white,
    fontSize: 17,
  );

  static const TextStyle bodyBorderedButtonText = TextStyle(
    fontFamily: bodyFont,
    fontWeight: FontWeight.w500,
    color: AppColors.white,
    fontSize: 14,
  );

  static const TextStyle bodyButtonText = TextStyle(
    fontFamily: bodyFont,
    color: AppColors.white,
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );

  static const TextStyle headlineLarge = TextStyle(
    fontFamily: headlineFont,
    fontWeight: FontWeight.w400,
    color: AppColors.white,
    fontSize: 36,
  );

  static const TextStyle headlineMedium = TextStyle(
    fontFamily: headlineFont,
    color: AppColors.white,
    fontWeight: FontWeight.w400,
    fontSize: 32,
  );

  static const TextStyle headlineSmall = TextStyle(
    fontFamily: headlineFont,
    color: AppColors.white,
    fontWeight: FontWeight.w400,
    fontSize: 28,
  );

  static const TextStyle s24w400head = TextStyle(
    fontFamily: headlineFont,
    fontWeight: FontWeight.w400,
    fontSize: 24,
  );

  static const TextStyle s20w400head = TextStyle(
    fontFamily: headlineFont,
    fontWeight: FontWeight.w400,
    fontSize: 20,
  );

  static const TextStyle headlineExtraSmall = TextStyle(
    fontFamily: headlineFont,
    color: AppColors.white,
    fontWeight: FontWeight.w400,
    fontSize: 20,
  );
}
