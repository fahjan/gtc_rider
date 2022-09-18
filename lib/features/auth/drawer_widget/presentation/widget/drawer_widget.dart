// ignore_for_file: sort_child_properties_last, must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gtc_rider/core/style/app_colors.dart';
import 'package:gtc_rider/core/style/app_image.dart';
import 'package:gtc_rider/core/style/app_sizes.dart';
import 'package:gtc_rider/features/auth/drawer_widget/controllers/drawers_controller.dart';
import 'package:gtc_rider/features/auth/drawer_widget/presentation/widget/list_tile_widget.dart';

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
        ListTileWidget(
          onTap: () {},
          title: TextListTile(text: 'planner'.tr),
          horizontalTitleGap: AppSizes.r9,
          minLeadingWidth: 0,
          leading: Icon(
            Icons.calendar_month,
            color: AppColors.primary,
          ),
        ),
        SizedBox(height: AppSizes.r10),
        ListTileWidget(
          onTap: () {},
          title: TextListTile(text: 'earnings'.tr),
          horizontalTitleGap: AppSizes.r9,
          minLeadingWidth: 0,
          leading: Icon(
            Icons.attach_money,
            color: AppColors.primary,
          ),
        ),
        SizedBox(height: AppSizes.r10),
        ListTileWidget(
          onTap: () {},
          title: TextListTile(text: 'referrals'.tr),
          horizontalTitleGap: AppSizes.r9,
          minLeadingWidth: 0,
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
        ListTileWidget(
          title: TextListTile(text: 'statistics'.tr),
          onTap: () {},
          contentPadding: EdgeInsetsDirectional.only(start: AppSizes.r48),
        ),
        ListTileWidget(
          title: TextListTile(text: 'inbox'.tr),
          onTap: () {},
          contentPadding: EdgeInsetsDirectional.only(start: AppSizes.r48),
          trailing: Padding(
            padding: EdgeInsetsDirectional.only(end: AppSizes.r122),
            child: Container(
              padding: EdgeInsetsDirectional.only(
                  end: AppSizes.r12, start: AppSizes.r12),
              child: Text(
                '1',
                style: GoogleFonts.cairo(
                    fontSize: FontSizes.sp12,
                    fontWeight: FontWeight.w700,
                    color: AppColors.white),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSizes.r30),
                color: AppColors.lightGreen,
              ),
            ),
          ),
        ),
        ListTileWidget(
          title: TextListTile(text: 'setting'.tr),
          onTap: () {},
          contentPadding: EdgeInsetsDirectional.only(start: AppSizes.r48),
        ),
        ListTileWidget(
          title: TextListTile(text: 'faqs'.tr),
          onTap: () {},
          contentPadding: EdgeInsetsDirectional.only(start: AppSizes.r48),
        ),
        Divider(
          thickness: AppSizes.r2,
          color: AppColors.grey,
          height: 0,
        ),
        ListTileWidget(
          onTap: () {},
          title: TextListTile(text: 'logout'.tr),
          horizontalTitleGap: AppSizes.r9,
          minLeadingWidth: 0,
          leading: Icon(
            Icons.logout,
            color: AppColors.primary,
          ),
        ),
      ]),
    );
  }
}
