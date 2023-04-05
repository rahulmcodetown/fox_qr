import 'package:fox/shared/shared.dart';
import 'package:flutter/material.dart';

abstract class AppText {
  AppText._();

  static TextStyle get text12w400 => TextStyle(
        color: AppColors.black,
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
      );
  static TextStyle get text12w600 => TextStyle(
        color: AppColors.black,
        fontSize: 12.sp,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get text12w400Grey => TextStyle(
        color: AppColors.greyColor,
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get text14w400 => TextStyle(
        color: AppColors.black,
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get text14w700appColor => TextStyle(
        color: AppColors.appColor,
        fontSize: 14.sp,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get text14w400Black => TextStyle(
        color: AppColors.black,
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
      );
  static TextStyle get text14w500 => TextStyle(
        color: AppColors.white,
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get text14w600 => TextStyle(
        color: AppColors.white,
        fontSize: 14.sp,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get text14w600OffWhite => TextStyle(
        color: AppColors.white.withOpacity(0.5),
        fontSize: 14.sp,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get text24w400 => TextStyle(
        color: AppColors.white,
        fontSize: 24.sp,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get text18w600 => TextStyle(
        color: AppColors.white,
        fontSize: 18.sp,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get text24w600 => TextStyle(
        color: AppColors.black,
        fontSize: 24.sp,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get text16w600 => TextStyle(
        color: AppColors.white,
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get text16w500 => TextStyle(
        color: AppColors.black,
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get text16w400 => TextStyle(
        color: AppColors.black,
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get text16w600OffWhite => TextStyle(
        color: AppColors.white.withOpacity(0.5),
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get text20w600White => TextStyle(
        color: AppColors.white,
        fontSize: 20.sp,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get text20w600Black => TextStyle(
        color: AppColors.black,
        fontSize: 20.sp,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get text32w600 => TextStyle(
        color: AppColors.black,
        fontSize: 32.sp,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get text38w600 => TextStyle(
        color: AppColors.black,
        fontSize: 38.sp,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get text24w700 => TextStyle(
        color: AppColors.black,
        fontSize: 24.sp,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get text24w600White => TextStyle(
        color: AppColors.white,
        fontSize: 24.sp,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get text12w400White => TextStyle(
        color: AppColors.white,
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
      );
  static TextStyle get text16w700White => TextStyle(
        color: AppColors.white,
        fontSize: 16.sp,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get text16w400White => TextStyle(
        color: AppColors.white,
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get text60w600 => TextStyle(
        color: AppColors.black,
        fontSize: 60.sp,
        fontWeight: FontWeight.w600,
      );
}
