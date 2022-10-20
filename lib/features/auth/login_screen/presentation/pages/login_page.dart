import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gtc_rider/core/style/app_colors.dart';
import 'package:gtc_rider/core/style/app_sizes.dart';
import 'package:gtc_rider/core/widgets/my_textstyle_widget.dart';
import 'package:gtc_rider/features/auth/login_screen/controllers/login_controllers.dart';
import 'package:gtc_rider/features/auth/login_screen/domain/entities/login_base_entity.dart';
import 'package:gtc_rider/features/auth/login_screen/presentation/widgets/text_form_field_widget.dart';
import 'package:gtc_rider/utils/one_signal_config.dart';

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
          color: AppColors.brown,
          child: MyTextStyleWidget(
            text: 'daddyEat'.tr,
            fontWeight: FontWeight.bold,
            size: FontSizes.sp44,
          ),
        ),
        SizedBox(height: AppSizes.r40),
        MyTextStyleWidget(
          textAlign: TextAlign.center,
          text: 'ready_to_go'.tr,
          color: AppColors.brown,
          fontWeight: FontWeight.w600,
          size: FontSizes.sp24,
        ),
        SizedBox(height: AppSizes.r16),
        MyTextStyleWidget(
          textAlign: TextAlign.center,
          text: 'signin_now'.tr,
          color: AppColors.brown,
          fontWeight: FontWeight.w600,
          size: FontSizes.sp24,
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
                keyboardType: TextInputType.emailAddress,
                show_Password: false,
                controller: controller.emailControler,
                hinttext: 'email',
              ),
              SizedBox(height: AppSizes.r12),
              TextFormFieldWidget(
                keyboardType: TextInputType.number,
                controller: controller.passwordControler,
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
                title: MyTextStyleWidget(
                  text: 'remember_me'.tr,
                  color: AppColors.brown,
                ),
              ),
              SizedBox(height: AppSizes.r28),
              ElevatedButton(
                onPressed: () {
                  OneSignalConfig.showBottomSheet('delivery_address',
                      'pickup_address', 'delivery_fee', 'rider_tip');
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, AppSizes.r48),
                  primary: AppColors.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppSizes.r24),
                  ),
                  textStyle: GoogleFonts.cairo(
                    fontSize: FontSizes.sp16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                child: MyTextStyleWidget(text: 'Login'.tr),
              ),
              SizedBox(height: AppSizes.r16),
              ElevatedButton(
                onPressed: () async {
                  await controller.loginRider();
                },
                style: ElevatedButton.styleFrom(
                  // backgroundColor: AppColors.white,
                  minimumSize: Size(double.infinity, AppSizes.r48),
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
                child: MyTextStyleWidget(
                  text: 'signin'.tr,
                  color: AppColors.brown,
                ),
              ),
              SizedBox(height: AppSizes.r64),
              Row(
                children: [
                  MyTextStyleWidget(
                      text: 'forgot_password?'.tr,
                      size: FontSizes.sp14,
                      color: AppColors.brown,
                      fontWeight: FontWeight.w500),
                  TextButton(
                    onPressed: () {},
                    child: MyTextStyleWidget(
                        text: 'click_here'.tr,
                        size: FontSizes.sp14,
                        color: AppColors.primaryDark,
                        fontWeight: FontWeight.w500),
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
