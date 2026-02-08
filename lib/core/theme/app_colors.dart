// app_colors.dart

import 'package:flutter/material.dart';

/// App color palette matching the Emerald Green design
class AppColors {
  // Prevent instantiation
  AppColors._();

  // ==================== Primary Colors ====================

  /// Primary - Emerald Green (Main Brand)
  static const Color primaryColor = Color(0xFF1B9C85); // Matches the bright green cards

  /// Secondary - Dark Blue/Grey (Contrast)
  static const Color secondaryColor = Color(0xFF4C4C6D);

  /// Accent - Warm Orange/Gold (Highlights)
  static const Color accentColor = Color(0xFFFFB74D);

  // ==================== Specific Design Colors ====================
  
  /// Dark Green for "Next Session" card
  static const Color darkGreen = Color(0xFF064E3B); 
  
  /// Light Mint for backgrounds
  static const Color lightMint = Color(0xFFE0F2F1);
  
  /// Light Yellow/Cream for Live Cards
  static const Color lightYellow = Color(0xFFFFF9C4);
  
  /// Light Blue for Track Cards
  static const Color lightBlue = Color(0xFFE3F2FD);
  
  /// Light Pink for Track Cards
  static const Color lightPink = Color(0xFFFFEBEE);

  // ==================== Functional Colors ====================

  /// Main background - Pure White
  static const Color backgroundColor = Colors.white;
  static const Color backgroundSecondary = Colors.white;

  /// Surface - White
  static const Color surfaceColor = Colors.white;
  static const Color surfaceElevated = Colors.white;

  // ==================== Text Colors ====================

  /// Primary text - Dark Grey
  static const Color textPrimaryColor = Color(0xFF1F222B);

  /// Text on primary color - White
  static const Color textOnPrimary = Colors.white;

  /// Secondary text - Medium Grey
  static const Color textSecondaryColor = Color(0xFF9CA3AF);

  /// Hint text - Light Grey
  static const Color textHintColor = Color(0xFFD1D5DB);

  // ==================== Status Colors ====================

  /// Success - Green
  static const Color successColor = Color(0xFF10B981);

  /// Error - Red
  static const Color errorColor = Color(0xFFEF4444);

  /// Warning - Amber
  static const Color warningColor = Color(0xFFF59E0B);
  static const Color warningLight = Color(0xFFFEF3C7);

  /// Info - Blue
  static const Color infoColor = Color(0xFF3B82F6);

  /// Disabled - Grey
  static const Color disabledColor = Color(0xFF9E9E9E);

  // ==================== Shadows & Overlays ====================

  /// Shadow - Transparent (Removed as per user request)
  static const Color shadowColor = Colors.transparent;
  
  static const Color shadowLight = Colors.transparent;

  // ==================== Gradients ====================

  /// Primary Green Gradient
  static const Color greenLight = Color(0xFF4DB6AC);
  static const Color greenMedium = primaryColor;
  static const Color greenDark = Color(0xFF137A68); // Darker emerald
  static const Color greenExtraLight = Color(0xFFE0F7FA); // Very light cyan/green
  
  
  static LinearGradient get primaryGradient => const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [primaryColor, greenLight],
  );
  
  // ==================== Interactive ====================
  
  static const Color disabledTextColor = Color(0xFFBDBDBD);

  // ==================== Interactive ====================
  
  static const Color borderColor = Color(0xFFE5E7EB);
  static const Color borderFocusColor = primaryColor;
  static const Color dividerColor = Color(0xFFE5E7EB);

  // ==================== Icons ====================
  
  static const Color iconPrimary = textPrimaryColor;
  static const Color iconSecondary = textSecondaryColor;
  static const Color iconOnPrimary = Colors.white;
}