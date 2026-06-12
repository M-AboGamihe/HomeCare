import 'app_text_styles.dart';
import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  static ThemeData get lightTheme => ThemeData(
    useMaterial3: true,

    // Colors
    colorScheme: const ColorScheme.light(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      surface: AppColors.background,
      error: AppColors.error,
    ),

    scaffoldBackgroundColor: AppColors.background,

    // AppBar
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.white,
      centerTitle: true,
      elevation: 0,
    ),

    // Buttons
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.white,
        padding: EdgeInsets.symmetric(vertical: 14.h),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.r)),
        textStyle: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
      ),
    ),

    // Input Fields (VERY IMPORTANT for your project)
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.white,

      contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14.r),
        borderSide: const BorderSide(color: AppColors.grey),
      ),

      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14.r),
        borderSide: const BorderSide(color: Colors.grey),
      ),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14.r),
        borderSide: const BorderSide(color: AppColors.primary, width: 2),
      ),

      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14.r),
        borderSide: const BorderSide(color: AppColors.error),
      ),

      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14.r),
        borderSide: const BorderSide(color: AppColors.error, width: 2),
      ),

      hintStyle: TextStyle(color: Colors.grey, fontSize: 14.sp),
    ),

    // Card Theme
    cardTheme: CardThemeData(
      color: AppColors.white,
      elevation: 2,
      margin: EdgeInsets.all(8.w),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.r)),
    ),

    // Text Theme
    textTheme: TextTheme(
      headlineLarge: AppTextStyles.headline,
      titleLarge: AppTextStyles.title,
      bodyMedium: AppTextStyles.body,
    ),
  );
}
