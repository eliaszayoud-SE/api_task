import 'package:api_task_6/core/constatnt/app_colors.dart';
import 'package:flutter/material.dart';

class CustomFloatingActionButton {
  CustomFloatingActionButton._();

  static FloatingActionButtonThemeData floatingActionButtonThemeData = FloatingActionButtonThemeData(
    foregroundColor: AppColors.white,
    backgroundColor: AppColors.green,
    shape: const CircleBorder(),
    elevation: 10
  );

}