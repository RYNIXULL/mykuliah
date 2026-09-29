import 'package:flutter/material.dart';

class AppTheme {
  // Colors
  static const Color backgroundPrimary = Color(0xFFEBEBE6);
  static const Color surfacePrimary = Color(0xFFFFFFFF);
  
  static const Color textPrimary = Color(0xFF202020);
  static const Color textSecondary = Color(0xFF757575);
  
  static const Color brandPrimary = Color(0xFF4A6572);
  static const Color statusActive = Color(0xFFE8F5E9);
  static const Color statusActiveText = Color(0xFF2E7D32);

  // Typography
  static const String fontFamily = 'Roboto';

  static const TextStyle h1 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 28,
    fontWeight: FontWeight.w700,
    color: textPrimary,
    letterSpacing: -0.5,
  );

  static const TextStyle h2 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: textPrimary,
    letterSpacing: -0.3,
  );

  static const TextStyle body = TextStyle(
    fontFamily: fontFamily,
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: textSecondary,
    height: 1.5,
  );

  static const TextStyle label = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: textPrimary,
  );

  static const TextStyle caption = TextStyle(
    fontFamily: fontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: textSecondary,
    letterSpacing: 0.2,
  );

  // Spacing
  static const double spacingMicro = 4.0;
  static const double spacingCompact = 8.0;
  static const double spacingSmall = 12.0;
  static const double spacingDefault = 16.0;
  static const double spacingMedium = 20.0;
  static const double spacingLarge = 24.0;
  static const double spacingSection = 32.0;
  static const double screenPadding = 24.0;

  // Radius
  static const double radiusSmall = 12.0;
  static const double radiusMedium = 16.0;
  static const double radiusLarge = 20.0;
  static const double radiusCard = 24.0;
  static const double radiusPill = 999.0;
  
  // 3D Surface Gradients
  static const LinearGradient convexGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFFFFFFFF),
      Color(0xFFF7F7F7),
    ],
  );

  static const LinearGradient concaveGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFFEBEBEB),
      Color(0xFFFFFFFF),
    ],
  );

  // Shadows
  static List<BoxShadow> softShadow = [
    BoxShadow(
      color: Colors.black.withAlpha(45), // 18% opacity for stronger depth
      offset: const Offset(8, 8),
      blurRadius: 24,
      spreadRadius: -2,
    ),
    const BoxShadow(
      color: Colors.white,
      offset: Offset(-8, -8),
      blurRadius: 24,
      spreadRadius: 2,
    ),
  ];

  static List<BoxShadow> pressedShadow = [
    BoxShadow(
      color: Colors.black.withAlpha(20),
      offset: const Offset(3, 3),
      blurRadius: 10,
      spreadRadius: -1,
    ),
    BoxShadow(
      color: Colors.white.withAlpha(220),
      offset: const Offset(-3, -3),
      blurRadius: 10,
      spreadRadius: 1,
    ),
  ];
}
