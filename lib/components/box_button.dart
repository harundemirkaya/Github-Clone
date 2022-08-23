import 'package:flutter/material.dart';
import 'package:gitapp/utils/constant.dart';

import '../themes/color.dart';

class BoxButton extends StatelessWidget {
  final String title;
  final Color bgColor;
  final VoidCallback? onTap;
  const BoxButton({
    Key? key,
    required this.title,
    this.onTap,
    required this.bgColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (title == "Add Favorite") {
      return Column(
        children: [
          Text(
            "Add favorite respositories for quick access at any time, withput having to search",
            textAlign: TextAlign.center,
            style: titleStyle.copyWith(
                color: grey, fontWeight: FontWeight.w500, height: 1.5),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          SizedBox(
            height: 45,
            width: double.infinity,
            child: ElevatedButton(
                onPressed: onTap,
                style: ElevatedButton.styleFrom(
                    primary: bgButton,
                    side: BorderSide(color: bgColor, width: 0.05)),
                child: Text(
                  title.toUpperCase(),
                  style: subTitleStyle.copyWith(color: primary),
                )),
          )
        ],
      );
    } else {
      return Column(
        children: [
          Text(
            "Fast access you lists of Issues, Pull Request, or Discussions",
            textAlign: TextAlign.center,
            style: titleStyle.copyWith(
                color: grey, fontWeight: FontWeight.w500, height: 1.5),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          SizedBox(
            height: 45,
            width: double.infinity,
            child: ElevatedButton(
                onPressed: onTap,
                style: ElevatedButton.styleFrom(
                    primary: bgButton,
                    side: BorderSide(color: bgColor, width: 0.05)),
                child: Text(
                  title.toUpperCase(),
                  style: subTitleStyle.copyWith(color: primary),
                )),
          )
        ],
      );
    }
  }
}
