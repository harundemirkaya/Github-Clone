import 'package:flutter/material.dart';
import 'package:gitapp/themes/color.dart';
import 'package:gitapp/utils/constant.dart';
import 'package:line_icons/line_icons.dart';

class ExploreCard extends StatelessWidget {
  final String? imageUrl;
  final String? profileUrl, profileName, profileUsername;
  final String? description, star, contributor;
  final String? language;
  final Color? colorIconLanguage;
  final bool hasImageUrl, hasLanguage;

  const ExploreCard({
    Key? key,
    this.imageUrl,
    this.profileUrl,
    this.profileName,
    this.profileUsername,
    this.description,
    this.star,
    this.contributor,
    this.language,
    this.colorIconLanguage,
    this.hasImageUrl = true,
    this.hasLanguage = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        hasImageUrl
            ? Container(
                height: 188,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: NetworkImage(imageUrl!),
                  fit: BoxFit.cover,
                )),
              )
            : SizedBox(),
        SizedBox(
          height: defaultPadding,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(profileUrl!),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: defaultPadding,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          profileName!,
                          style: titleStyle,
                        ),
                        SizedBox(
                          height: defaultPadding / 4,
                        ),
                        Text(
                          profileUsername!,
                          style: subTitleStyle.copyWith(color: grey),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: defaultPadding,
              ),
              Text(
                description!,
                style: titleStyle.copyWith(color: grey, height: 1.5),
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Icon(
                        LineIcons.starAlt,
                        color: yellow,
                        size: 18,
                      ),
                      SizedBox(
                        width: defaultPadding / 2,
                      ),
                      Text(
                        star!,
                        style: titleStyle.copyWith(
                            color: grey, fontWeight: FontWeight.normal),
                      )
                    ],
                  ),
                  SizedBox(
                    width: defaultPadding / 2,
                  ),
                  hasLanguage
                      ? Row(
                          children: [
                            Icon(
                              LineIcons.circle,
                              color: colorIconLanguage,
                              size: 18,
                            ),
                            SizedBox(
                              width: defaultPadding / 2,
                            ),
                            Text(
                              language!,
                              style: titleStyle.copyWith(
                                  color: grey, fontWeight: FontWeight.normal),
                            )
                          ],
                        )
                      : SizedBox()
                ],
              ),
              SizedBox(
                height: defaultPadding / 2,
              ),
              Row(
                children: [
                  Icon(
                    LineIcons.user,
                    color: grey,
                    size: 18,
                  ),
                  SizedBox(
                    width: defaultPadding / 2,
                  ),
                  Text(
                    "$contributor Contributors ",
                    style: titleStyle.copyWith(
                        color: grey, fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    height: defaultPadding,
                  ),
                ],
              ),
              SizedBox(
                height: defaultPadding,
              ),
              SizedBox(
                height: 45,
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  style:
                      ElevatedButton.styleFrom(primary: grey.withOpacity(0.25)),
                  icon: Icon(LineIcons.star, color: primary, size: 18),
                  label: Text(
                    "Star".toUpperCase(),
                    style: subTitleStyle.copyWith(color: primary),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: defaultPadding * 1.5,
        ),
        Divider(
          color: grey.withOpacity(0.25),
          thickness: 18,
        ),
      ],
    );
  }
}
