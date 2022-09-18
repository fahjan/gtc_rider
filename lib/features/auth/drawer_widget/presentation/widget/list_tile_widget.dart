// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gtc_rider/core/style/app_sizes.dart';

class ListTileWidget extends StatelessWidget {
  final Widget title;
  final Widget? leading;
  final Widget? trailing;
  final double? horizontalTitleGap;
  final double? minLeadingWidth;
  Function() onTap;
  EdgeInsetsGeometry? contentPadding;
  ListTileWidget({
    required this.title,
    this.leading,
    this.trailing,
    this.horizontalTitleGap,
    this.minLeadingWidth,
    this.contentPadding,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      horizontalTitleGap: horizontalTitleGap,
      minLeadingWidth: minLeadingWidth,
      contentPadding: contentPadding,
      onTap: () {},
      title: title,
      leading: leading,
      trailing: trailing,
    );
  }
}

class TextListTile extends StatelessWidget {
  final String text;
  const TextListTile({
    Key? key,
    required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
     text ,
      style: GoogleFonts.cairo(
          fontSize: FontSizes.sp18, fontWeight: FontWeight.w700),
    );
  }
}
