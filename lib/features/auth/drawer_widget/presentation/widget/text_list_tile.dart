import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gtc_rider/core/style/app_sizes.dart';

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
