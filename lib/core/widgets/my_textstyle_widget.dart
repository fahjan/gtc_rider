import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyTextStyleWidget extends StatelessWidget {
  final String text;
  final Color? color;
  final double? size;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  const MyTextStyleWidget(
      {required this.text,
      this.color = Colors.white,
      this.size = 16,
      this.fontWeight = FontWeight.normal,
      this.textAlign = TextAlign.start,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: 16.sp,
        fontWeight: fontWeight,
      ),
      textAlign: textAlign,
    );
  }
}
