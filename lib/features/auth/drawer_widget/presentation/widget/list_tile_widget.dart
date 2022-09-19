

import 'package:flutter/material.dart';

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

