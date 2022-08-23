import 'package:flutter/material.dart';
import 'package:gitapp/themes/color.dart';
import 'package:gitapp/utils/constant.dart';
import 'package:line_icons/line_icons.dart';

class BorderButton extends StatelessWidget {
  final String title;
  final bool hasTrailingIcon;
  final VoidCallback? onTap;
  const BorderButton({
    Key? key,
    required this.title,
    this.hasTrailingIcon = true,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(defaultBorderRadius / 2),
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: defaultPadding / 1.5, vertical: defaultPadding / 3),
        decoration: BoxDecoration(
            color: bgButton,
            borderRadius: BorderRadius.circular(defaultBorderRadius / 2)),
        child: Row(children: [
          Text(
            title,
            style: subTitleStyle,
          ),
          hasTrailingIcon
              ? Padding(
                  padding: const EdgeInsets.only(left: defaultPadding / 4),
                  child: Icon(
                    LineIcons.angleDown,
                    color: grey,
                    size: 16,
                  ),
                )
              : SizedBox(),
        ]),
      ),
    );
  }
}
