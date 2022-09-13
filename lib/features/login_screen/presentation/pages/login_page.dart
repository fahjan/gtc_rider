// ignore_for_file: sort_child_properties_last, must_be_immutable, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gtc_rider/core/style/app_colors.dart';
import 'package:gtc_rider/core/style/app_sizes.dart';
import 'package:gtc_rider/features/login_screen/controllers/login_controllers.dart';
import 'package:gtc_rider/features/login_screen/presentation/widgets/text_form_field_widget.dart';

class LoginPage extends GetView<LoginController> {
  LoginPage({Key? key}) : super(key: key);
  bool va1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
          padding: EdgeInsets.only(top: AppSizes.r51),
          alignment: Alignment.topCenter,
          width: double.infinity,
          height: AppSizes.r122,
          child: Text(
            'daddyEat'.tr,
            style: GoogleFonts.combo(
              color: AppColors.white,
              fontSize: FontSizes.sp44,
              fontWeight: FontWeight.w400,
            ),
          ),
          color: AppColors.brown,
        ),
        SizedBox(height: AppSizes.r40),
        Text(
          'ready_to_go'.tr,
          textAlign: TextAlign.center,
          style: GoogleFonts.openSans(
            color: AppColors.brown,
            fontSize: FontSizes.sp24,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: AppSizes.r16),
        Text(
          'signin_now'.tr,
          textAlign: TextAlign.center,
          style: GoogleFonts.openSans(
            color: AppColors.brown,
            fontSize: FontSizes.sp20,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: AppSizes.r24),
        Padding(
          padding: EdgeInsets.only(
            right: AppSizes.r40,
            left: AppSizes.r40,
          ),
          child: Column(
            children: [
              TextFormFieldWidget(
                keyboardType: TextInputType.number,
                show_Password: false,
                hinttext: 'ID Number',
              ),
              SizedBox(height: AppSizes.r12),
              TextFormFieldWidget(
                keyboardType: TextInputType.visiblePassword,
                show_Password: true,
                hinttext: 'Password',
              ),
              SizedBox(height: AppSizes.r12),
              CheckboxListTile(
                value: va1,
                selected: va1,
                onChanged: (bool? va2) {
                  va1 = va2!;
                },
                title: const Text('Remember me'),
              ),
              SizedBox(height: AppSizes.r28),
              ElevatedButton(
                onPressed: () {},
                child: Text('Login'.tr),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, AppSizes.r48),
                  backgroundColor: AppColors.primaryDark,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppSizes.r24),
                  ),
                  textStyle: GoogleFonts.cairo(
                    fontSize: FontSizes.sp16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: AppSizes.r16),
              ElevatedButton(
                onPressed: () {},
                child: Text('signin'.tr),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, AppSizes.r48),
                  backgroundColor: AppColors.white,
                  foregroundColor: AppColors.primaryDark,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppSizes.r24),
                      side: BorderSide(
                        color: AppColors.primaryDark,
                        width: AppSizes.r2,
                      )),
                  textStyle: GoogleFonts.cairo(
                    fontSize: FontSizes.sp16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: AppSizes.r64),
              Row(
                children: [
                  Text(
                    'forgot_password'.tr,
                    style: GoogleFonts.cairo(
                        fontSize: FontSizes.sp14, fontWeight: FontWeight.w500),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'click_here'.tr,
                      style: GoogleFonts.cairo(
                          fontSize: FontSizes.sp14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
