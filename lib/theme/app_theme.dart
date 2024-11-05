import 'package:api_task_6/theme/custom_theme/custom_elevated_button_theme.dart';
import 'package:api_task_6/theme/custom_theme/custom_floating_action_button_theme.dart';
import 'package:api_task_6/theme/custom_theme/custom_input_decoration_theme.dart';
import 'package:flutter/material.dart';

import '../core/constatnt/app_colors.dart';
import 'custom_theme/custom_text_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData theme = ThemeData(
    useMaterial3: true,
    textTheme: CustomTextTheme.textTheme,
    elevatedButtonTheme: CustomElevatedButtonTheme.elevatedButtonTheme,
    primaryColor: AppColors.green,
    floatingActionButtonTheme: CustomFloatingActionButton.floatingActionButtonThemeData,
    scaffoldBackgroundColor:const Color(0xfff7f7f9),
      inputDecorationTheme: CustomInputDecorationTheme.inputDecorationTheme
  );

}