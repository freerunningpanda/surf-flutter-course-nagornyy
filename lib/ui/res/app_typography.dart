import 'package:flutter/material.dart';
import 'package:places/ui/res/app_colors.dart';

abstract class AppTypography {
  static const textText16Regular = TextStyle(
    fontSize: 16,
    height: 1.25,
    fontWeight: FontWeight.w400,
    color: AppColors.subtitleTextColor,
  );
  static const appBarTitle = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    color: AppColors.textColor,
  );

  static const sightCardTitle = TextStyle(
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );

  static const sightCardDescriptionTitle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.textColor,
  );

  static const sightDetailsTitle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: AppColors.textColor,
  );

  static const sightDetailsSubtitle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: AppColors.textColor,
  );

  static const sightDetailsSubtitleWithTime = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: AppColors.subtitleTextColor,
  );

  static const sightDetailsDescription = TextStyle(
    fontSize: 14,
    color: AppColors.textColor,
  );

  static const sightDetailsButtonName = TextStyle(
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );

  static const inactiveButtonColor = TextStyle(
    color: AppColors.inactiveColor,
  );

  static const activeButtonColor = TextStyle(
    color: AppColors.textColor,
  );
}
