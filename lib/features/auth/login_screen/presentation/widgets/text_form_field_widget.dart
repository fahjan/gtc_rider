// ignore_for_file: must_be_immutable, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:gtc_rider/core/style/app_colors.dart';
import 'package:gtc_rider/core/style/app_sizes.dart';

class TextFormFieldWidget extends StatelessWidget {
  String? hinttext;
  TextInputType keyboardType;
  bool show_Password;

  TextFormFieldWidget({
    Key? key,
    this.hinttext,
    required this.keyboardType,
    required this.show_Password,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      obscureText: show_Password,
      style: TextStyle(
        fontSize: FontSizes.sp16,
        fontWeight: FontWeight.w400,
        color: AppColors.greyDark,
      ),
      decoration: InputDecoration(
        hintStyle: TextStyle(
          fontSize: FontSizes.sp16,
          fontWeight: FontWeight.w400,
          color: AppColors.greyDark,
        ),
        hintText: '$hinttext'.tr,
        contentPadding: EdgeInsets.only(
          right: AppSizes.r25,
          left: AppSizes.r25,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.r24),
          borderSide: BorderSide(
            color: AppColors.grey,
            width: AppSizes.r2,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.r24),
          borderSide: BorderSide(
            color: AppColors.grey,
            width: AppSizes.r2,
          ),
        ),
      ),
    );
  }
}
