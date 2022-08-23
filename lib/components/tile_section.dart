import 'package:flutter/material.dart';
import 'package:gitapp/utils/constant.dart';

class TitleSection extends StatelessWidget {
  final String title;
  final Widget? trailing;

  const TitleSection({
    Key? key,
    required this.title,
    this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: subTitleStyle,
          ),
          trailing ?? SizedBox()
        ],
      ),
    );
  }
}
