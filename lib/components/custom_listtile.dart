import 'package:flutter/material.dart';
import 'package:gitapp/utils/constant.dart';

import '../themes/color.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final String? trailing;
  final IconData icon;
  final Color bgIconColor;
  final VoidCallback? onTap;
  final bool hasTrailing;
  const CustomListTile({
    Key? key,
    required this.title,
    required this.icon,
    required this.bgIconColor,
    this.onTap,
    this.trailing,
    this.hasTrailing = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Container(
        padding: EdgeInsets.all(defaultPadding / 3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defaultBorderRadius / 2),
          color: bgIconColor,
        ),
        child: Icon(
          icon,
          color: white,
          size: 20,
        ),
      ),
      title: Text(
        title,
        style: subTitleStyle,
      ),
      trailing:
          hasTrailing ? Text(trailing!, style: subTitleStyle) : SizedBox(),
    );
  }
}
