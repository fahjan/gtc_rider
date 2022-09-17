// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gtc_rider/core/style/app_colors.dart';
import 'package:gtc_rider/core/style/app_image.dart';
import 'package:gtc_rider/core/style/app_sizes.dart';
import 'package:gtc_rider/features/auth/drawer_widget/controllers/drawers_controller.dart';

class DrawerWidget extends GetView<DrawersController> {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: AppSizes.r325,
      child: ListView(children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset(
              colorBlendMode: BlendMode.multiply,
              color: AppColors.brown.withOpacity(.67),
              ImageApp.imagesdarwer,
              height: AppSizes.r300,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(top: AppSizes.r64),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: AppSizes.r30,
                    backgroundColor: AppColors.white,
                    child: Icon(
                      Icons.person,
                      size: AppSizes.r28,
                      color: AppColors.primary,
                    ),
                  ),
                  Text(
                    'RAMY ALSHAER',
                    style: GoogleFonts.cairo(
                        color: AppColors.white,
                        fontSize: FontSizes.sp20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'ID : 65465113231',
                    style: GoogleFonts.cairo(
                        color: AppColors.white,
                        fontSize: FontSizes.sp14,
                        fontWeight: FontWeight.w500),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            '20',
                            style: GoogleFonts.cairo(
                                color: AppColors.white,
                                fontSize: FontSizes.sp24,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            'order_today'.tr,
                            style: GoogleFonts.cairo(
                                color: AppColors.primary,
                                fontSize: FontSizes.sp12,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      SizedBox(width: AppSizes.r40),
                      Column(
                        children: [
                          Text(
                            '20.5 £',
                            style: GoogleFonts.cairo(
                                color: AppColors.white,
                                fontSize: FontSizes.sp24,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            'trip_total'.tr,
                            style: GoogleFonts.cairo(
                                color: AppColors.primary,
                                fontSize: FontSizes.sp12,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: AppSizes.r30),
        ListTile(
          horizontalTitleGap: AppSizes.r14,
          dense: true,
          minLeadingWidth: 0,
          onTap: () {},
          title: Text(
            'planner'.tr,
            style: GoogleFonts.cairo(
                fontSize: FontSizes.sp18, fontWeight: FontWeight.w700),
          ),
          leading: Icon(
            Icons.calendar_month,
            color: AppColors.primary,
          ),
        ),
        SizedBox(height: AppSizes.r10),
        ListTile(
          horizontalTitleGap: AppSizes.r14,
          dense: true,
          minLeadingWidth: 0,
          onTap: () {},
          title: Text(
            'earnings'.tr,
            style: GoogleFonts.cairo(
                fontSize: FontSizes.sp18, fontWeight: FontWeight.w700),
          ),
          leading: Icon(
            Icons.attach_money,
            color: AppColors.primary,
          ),
        ),
        SizedBox(height: AppSizes.r10),
        ListTile(
          horizontalTitleGap: AppSizes.r14,
          dense: true,
          minLeadingWidth: 0,
          onTap: () {},
          title: Text(
            'referrals'.tr,
            style: GoogleFonts.cairo(
                fontSize: FontSizes.sp18, fontWeight: FontWeight.w700),
          ),
          leading: Icon(
            Icons.font_download,
            color: AppColors.primary,
          ),
        ),
        SizedBox(height: AppSizes.r10),
        Divider(
          thickness: AppSizes.r2,
          color: AppColors.grey,
          height: 0,
        ),
        ListTile(
          contentPadding: EdgeInsetsDirectional.only(start: AppSizes.r51),
          dense: true,
          onTap: () {},
          title: Text(
            'statistics'.tr,
            style: GoogleFonts.cairo(
                fontSize: FontSizes.sp18, fontWeight: FontWeight.w700),
          ),
        ),
        ListTile(
          contentPadding: EdgeInsetsDirectional.only(start: AppSizes.r51),
          dense: true,
          onTap: () {},
          title: Text(
            'inbox'.tr,
            style: GoogleFonts.cairo(
                fontSize: FontSizes.sp18, fontWeight: FontWeight.w700),
          ),
          trailing: Padding(
            padding:  EdgeInsetsDirectional.only(end: AppSizes.r122),
            child: Container(
              padding: EdgeInsetsDirectional.only(end: AppSizes.r12,start: AppSizes.r12),
              child: Text(
                '1',
                style: GoogleFonts.cairo(
                  fontSize: FontSizes.sp12,
                  fontWeight: FontWeight.w700,
                  color: AppColors.white
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSizes.r30),
                color: AppColors.lightGreen,
              ),
            ),
          ),
        ),
        ListTile(
          contentPadding: EdgeInsetsDirectional.only(start: AppSizes.r51),
          dense: true,
          onTap: () {},
          title: Text(
            'setting'.tr,
            style: GoogleFonts.cairo(
                fontSize: FontSizes.sp18, fontWeight: FontWeight.w700),
          ),
        ),
        ListTile(
          contentPadding: EdgeInsetsDirectional.only(start: AppSizes.r51),
          dense: true,
          onTap: () {},
          title: Text(
            'faqs'.tr,
            style: GoogleFonts.cairo(
                fontSize: FontSizes.sp18, fontWeight: FontWeight.w700),
          ),
        ),
        Divider(
          thickness: AppSizes.r2,
          color: AppColors.grey,
          height: 0,
        ),
        ListTile(
          horizontalTitleGap: AppSizes.r14,
          minLeadingWidth: 0,
          dense: true,
          onTap: () {},
          title: Text(
            'logout'.tr,
            style: GoogleFonts.cairo(
                fontSize: FontSizes.sp18, fontWeight: FontWeight.w700),
          ),
          leading: Icon(
            Icons.logout,
            color: AppColors.primary,
          ),
        ),
      ]),
    );
  }
}
