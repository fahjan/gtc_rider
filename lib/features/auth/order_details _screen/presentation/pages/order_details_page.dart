import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gtc_rider/core/style/app_colors.dart';
import 'package:gtc_rider/core/style/app_sizes.dart';
import 'package:gtc_rider/features/auth/order_details%20_screen/controllers/order_details_controllers.dart';

class OrderDetailsPage extends GetView<OrderDetailsController> {
  const OrderDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        elevation: AppSizes.r0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: AppColors.primaryDark,
            size: AppSizes.r20,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.only(end: AppSizes.r12),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.error_outline,
                color: AppColors.primaryDark,
                size: AppSizes.r20,
              ),
            ),
          ),
        ],
        title: Text(
          'Order Details',
          style: GoogleFonts.cairo(
              fontSize: FontSizes.sp16,
              fontWeight: FontWeight.w700,
              color: AppColors.black),
        ),
      ),
      body: ListView(children: [
        Padding(
          padding: EdgeInsetsDirectional.only(
            start: AppSizes.r31,
            end: AppSizes.r31,
            top: AppSizes.r28,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Restourant',
                style: GoogleFonts.cairo(
                    fontSize: FontSizes.sp16,
                    fontWeight: FontWeight.w700,
                    color: AppColors.black48),
              ),
              SizedBox(height: AppSizes.r7),
              Text(
                'Al afia restournt . Elng',
                style: GoogleFonts.cairo(
                    fontSize: FontSizes.sp16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black),
              ),
              Text(
                '55 New Bordwy W545H',
                style: GoogleFonts.cairo(
                    fontSize: FontSizes.sp16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black),
              ),
              SizedBox(height: AppSizes.r12),
              Divider(
                thickness: AppSizes.r2,
                color: AppColors.grey,
                height: AppSizes.r0,
              ),
              SizedBox(height: AppSizes.r12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Delivery time',
                    style: GoogleFonts.cairo(
                        fontSize: FontSizes.sp16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.black),
                  ),
                  Text(
                    '05:35Am.28/11/2018',
                    style: GoogleFonts.cairo(
                        fontSize: FontSizes.sp16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.black),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Rider tip',
                    style: GoogleFonts.cairo(
                        fontSize: FontSizes.sp16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.black),
                  ),
                  Text(
                    '2.0 £',
                    style: GoogleFonts.cairo(
                        fontSize: FontSizes.sp16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.black),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Delivery fee',
                    style: GoogleFonts.cairo(
                        fontSize: FontSizes.sp16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.black),
                  ),
                  Text(
                    '20.5 £',
                    style: GoogleFonts.cairo(
                        fontSize: FontSizes.sp16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.black),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: AppSizes.r20),
        Container(
          height: AppSizes.r40,
          padding: EdgeInsetsDirectional.only(
            start: AppSizes.r31,
            end: AppSizes.r16,
          ),
          color: AppColors.primary,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'List items',
                style: GoogleFonts.cairo(
                    fontSize: FontSizes.sp18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.black),
              ),
              Text(
                '5 Items',
                style: GoogleFonts.cairo(
                    fontSize: FontSizes.sp14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black38),
              ),
            ],
          ),
        ),
        SizedBox(height: AppSizes.r16),
        Padding(
          padding: EdgeInsetsDirectional.only(
            start: AppSizes.r31,
            end: AppSizes.r31,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Tomatoes',
                    style: GoogleFonts.cairo(
                        fontSize: FontSizes.sp16,
                        fontWeight: FontWeight.w700,
                        color: AppColors.black),
                  ),
                  Text(
                    '15 KG',
                    style: GoogleFonts.cairo(
                        fontSize: FontSizes.sp14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.black),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Potato',
                    style: GoogleFonts.cairo(
                        fontSize: FontSizes.sp16,
                        fontWeight: FontWeight.w700,
                        color: AppColors.black),
                  ),
                  Text(
                    '10 KG',
                    style: GoogleFonts.cairo(
                        fontSize: FontSizes.sp14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.black),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'green pepper',
                    style: GoogleFonts.cairo(
                        fontSize: FontSizes.sp16,
                        fontWeight: FontWeight.w700,
                        color: AppColors.black),
                  ),
                  Text(
                    '5 KG',
                    style: GoogleFonts.cairo(
                        fontSize: FontSizes.sp14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.black),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'parsley',
                    style: GoogleFonts.cairo(
                        fontSize: FontSizes.sp16,
                        fontWeight: FontWeight.w700,
                        color: AppColors.black),
                  ),
                  Text(
                    '30 KG',
                    style: GoogleFonts.cairo(
                        fontSize: FontSizes.sp14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.black),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Aubergine',
                    style: GoogleFonts.cairo(
                        fontSize: FontSizes.sp16,
                        fontWeight: FontWeight.w700,
                        color: AppColors.black),
                  ),
                  Text(
                    '30 KG',
                    style: GoogleFonts.cairo(
                        fontSize: FontSizes.sp14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.black),
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
