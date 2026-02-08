// app_theme.dart (Updated with TextTheme)

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app_colors.dart';
import 'app_dimensions.dart';
import 'app_font_weight.dart';
import 'app_text_styles.dart';

/// Modern theme configuration following Material 3 design system
class AppTheme {
  // Prevent instantiation
  AppTheme._();

  static ThemeData get lightTheme => ThemeData(
    /// Enable Material 3 design language
    useMaterial3: true,

    /// Set brightness to light
    brightness: Brightness.light,

    /// Default font family
    fontFamily: 'Cairo',

    /// Scaffold background color
    scaffoldBackgroundColor: AppColors.backgroundColor,

    /// Color scheme using Material 3
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryColor,
      brightness: Brightness.light,
      primary: AppColors.primaryColor,
      secondary: AppColors.secondaryColor,
      tertiary: AppColors.accentColor,
      error: AppColors.errorColor,
      surface: AppColors.surfaceColor,
      surfaceContainerHighest: AppColors.backgroundColor,
    ),

    /// Text theme using AppTextStyles
    textTheme: TextTheme(
      // Display styles
      displayLarge: AppTextStyles.displayLarge,
      displayMedium: AppTextStyles.displayMedium,
      displaySmall: AppTextStyles.displaySmall,

      // Headline styles
      headlineLarge: AppTextStyles.headline1,
      headlineMedium: AppTextStyles.headline2,
      headlineSmall: AppTextStyles.headline3,

      // Title styles
      titleLarge: AppTextStyles.titleLarge,
      titleMedium: AppTextStyles.titleMedium,
      titleSmall: AppTextStyles.titleSmall,

      // Body styles
      bodyLarge: AppTextStyles.bodyLarge,
      bodyMedium: AppTextStyles.bodyMedium,
      bodySmall: AppTextStyles.bodySmall,

      // Label styles
      labelLarge: AppTextStyles.labelLarge,
      labelMedium: AppTextStyles.labelMedium,
      labelSmall: AppTextStyles.labelSmall,
    ),

    /// AppBar theme
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: AppColors.textOnPrimary,
      elevation: 0,
      toolbarHeight: AppDimensions.appBarHeight,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
      titleTextStyle: AppTextStyles.titleLarge.copyWith(
        color: AppColors.textOnPrimary,
      ),
      iconTheme: IconThemeData(
        color: AppColors.iconOnPrimary,
        size: AppDimensions.iconM,
      ),
    ),

    /// Bottom navigation bar theme
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.backgroundColor,
      selectedItemColor: AppColors.primaryColor,
      unselectedItemColor: AppColors.iconSecondary,
      type: BottomNavigationBarType.fixed,
      elevation: 0,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedLabelStyle: AppTextStyles.labelSmall.copyWith(
        fontWeight: AppFontWeight.semiBold,
        color: AppColors.primaryColor,
      ),
      unselectedLabelStyle: AppTextStyles.labelSmall.copyWith(
        color: AppColors.iconSecondary,
      ),
      selectedIconTheme: IconThemeData(
        size: AppDimensions.bottomNavIconSelected,
        color: AppColors.primaryColor,
      ),
      unselectedIconTheme: IconThemeData(
        size: AppDimensions.bottomNavIconUnselected,
        color: AppColors.iconSecondary,
      ),
    ),

    /// Bottom sheet theme
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: AppColors.backgroundColor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      modalBackgroundColor: AppColors.backgroundColor,
    ),

    /// Card theme
    cardTheme: CardThemeData(
      color: AppColors.backgroundColor,
      elevation: 0,
      shadowColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimensions.radiusM),
      ),
      margin: EdgeInsets.all(AppDimensions.cardMargin),
    ),

    /// Elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        minimumSize: Size(0, AppDimensions.buttonHeightM),
        textStyle: AppTextStyles.buttonMedium,
      ),
    ),

    /// Outlined button theme
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.primaryColor,
        side: BorderSide(
          color: AppColors.primaryColor,
          width: AppDimensions.borderMedium,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: AppDimensions.buttonPaddingHL,
          vertical: AppDimensions.buttonPaddingVM,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusS),
        ),
        minimumSize: Size(0, AppDimensions.buttonHeightM),
        textStyle: AppTextStyles.buttonMedium.copyWith(
          color: AppColors.primaryColor,
        ),
      ),
    ),

    /// Text button theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.primaryColor,
        padding: EdgeInsets.symmetric(
          horizontal: AppDimensions.buttonPaddingHM,
          vertical: AppDimensions.buttonPaddingVS,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusS),
        ),
        textStyle: AppTextStyles.buttonMedium.copyWith(
          color: AppColors.primaryColor,
        ),
      ),
    ),

    /// Input decoration theme
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.surfaceColor,
      contentPadding: EdgeInsets.symmetric(
        horizontal: AppDimensions.inputPaddingH,
        vertical: AppDimensions.inputPaddingV,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppDimensions.radiusS),
        borderSide: BorderSide(
          color: AppColors.borderColor,
          width: AppDimensions.borderNormal,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppDimensions.radiusS),
        borderSide: BorderSide(
          color: AppColors.borderColor,
          width: AppDimensions.borderNormal,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppDimensions.radiusS),
        borderSide: BorderSide(
          color: AppColors.borderFocusColor,
          width: AppDimensions.borderThick,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppDimensions.radiusS),
        borderSide: BorderSide(
          color: AppColors.errorColor,
          width: AppDimensions.borderNormal,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppDimensions.radiusS),
        borderSide: BorderSide(
          color: AppColors.errorColor,
          width: AppDimensions.borderThick,
        ),
      ),
      labelStyle: AppTextStyles.bodyMedium.copyWith(
        color: AppColors.textSecondaryColor,
      ),
      hintStyle: AppTextStyles.hint,
      errorStyle: AppTextStyles.error,
      prefixIconColor: AppColors.iconSecondary,
      suffixIconColor: AppColors.iconSecondary,
    ),

    /// Divider theme
    dividerTheme: DividerThemeData(
      color: AppColors.dividerColor,
      thickness: AppDimensions.dividerThickness,
      space: AppDimensions.dividerThickness,
      indent: AppDimensions.dividerIndent,
      endIndent: AppDimensions.dividerIndent,
    ),

    /// Icon theme
    iconTheme: IconThemeData(
      color: AppColors.iconPrimary,
      size: AppDimensions.iconM,
    ),

    /// List tile theme
    listTileTheme: ListTileThemeData(
      iconColor: AppColors.iconPrimary,
      textColor: AppColors.textPrimaryColor,
      contentPadding: EdgeInsets.symmetric(
        horizontal: AppDimensions.paddingM,
        vertical: AppDimensions.paddingS,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimensions.radiusS),
      ),
      titleTextStyle: AppTextStyles.bodyMedium,
      subtitleTextStyle: AppTextStyles.bodySmall,
    ),

    /// Chip theme
    chipTheme: ChipThemeData(
      backgroundColor: AppColors.surfaceColor,
      deleteIconColor: AppColors.iconSecondary,
      disabledColor: AppColors.disabledColor,
      selectedColor: AppColors.primaryColor.withOpacity(0.2),
      secondarySelectedColor: AppColors.secondaryColor.withOpacity(0.2),
      labelPadding: EdgeInsets.symmetric(horizontal: AppDimensions.paddingS),
      padding: EdgeInsets.all(AppDimensions.paddingS),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimensions.radiusS),
      ),
      labelStyle: AppTextStyles.labelMedium,
      secondaryLabelStyle: AppTextStyles.labelMedium,
      brightness: Brightness.light,
    ),

    /// Dialog theme
    dialogTheme: DialogThemeData(
      backgroundColor: AppColors.surfaceElevated,
      elevation: AppDimensions.elevationHigh,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimensions.radiusL),
      ),
      titleTextStyle: AppTextStyles.headline3,
      contentTextStyle: AppTextStyles.bodyMedium,
    ),

    /// Snackbar theme
    snackBarTheme: SnackBarThemeData(
      backgroundColor: AppColors.textPrimaryColor,
      contentTextStyle: AppTextStyles.bodyMedium.copyWith(
        color: AppColors.textOnPrimary,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimensions.radiusS),
      ),
      behavior: SnackBarBehavior.floating,
      elevation: 0,
    ),
  );
}