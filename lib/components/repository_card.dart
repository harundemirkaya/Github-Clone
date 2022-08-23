import 'package:flutter/material.dart';
import 'package:gitapp/utils/constant.dart';
import 'package:line_icons/line_icons.dart';

import '../themes/color.dart';

class RepositoryCard extends StatelessWidget {
  final String title, star, language;
  const RepositoryCard({
    Key? key,
    required this.title,
    required this.star,
    required this.language,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: bgButton,
        borderRadius: BorderRadius.circular(defaultBorderRadius),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(profileUrl), fit: BoxFit.cover)),
            ),
            SizedBox(
              width: defaultPadding / 2,
            ),
            Text(
              userName,
              style: titleStyle.copyWith(
                  fontWeight: FontWeight.normal, color: grey),
            )
          ],
        ),
        SizedBox(
          height: defaultPadding / 2,
        ),
        Text(
          title,
          style: titleStyle,
        ),
        SizedBox(
          height: defaultPadding * 3,
        ),
        Row(
          children: [
            Row(children: [
              Icon(
                LineIcons.starAlt,
                color: yellow,
                size: 16,
              ),
              SizedBox(
                width: defaultPadding / 2,
              ),
              Text(star,
                  style: titleStyle.copyWith(
                    color: grey,
                    fontWeight: FontWeight.normal,
                  )),
              SizedBox(
                width: defaultPadding / 2,
              ),
              Row(children: [
                Icon(Icons.circle, color: green),
                SizedBox(
                  width: defaultPadding / 2,
                ),
                Text(language, style: titleStyle),
              ]),
            ]),
          ],
        )
      ]),
    );
  }
}
