import 'package:flutter/material.dart';
import 'package:my_porfolio/globals/app_colors.dart';
import 'package:my_porfolio/globals/app_text_styles.dart';

class AppButtons {
  
  static MaterialButton buildMaterialButton({required String buttonName ,required VoidCallback onTap}) {
    return MaterialButton(
      onPressed: onTap,
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      color: AppColors.themeColor,
      splashColor: AppColors.lawGreen,
      height: 46,
      minWidth: 130,
      hoverColor: AppColors.aqua,
      elevation: 6,
      focusElevation: 12,
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30), borderSide: BorderSide.none),
      child: Text(
        buttonName,
        style: AppTextStyles.headerTextStyle(),
      ),
    );
  }

}