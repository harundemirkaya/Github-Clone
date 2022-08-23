import 'package:flutter/material.dart';
import 'package:gitapp/dummy_data/account_page_json.dart';
import 'package:gitapp/themes/color.dart';
import 'package:gitapp/utils/constant.dart';
import 'package:line_icons/line_icons.dart';

import '../../components/custom_listtile.dart';
import '../../components/repository_card.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: _buildAppBar(), body: _buildBody());
  }

  AppBar _buildAppBar() {
    return AppBar(
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.share)),
        IconButton(onPressed: () {}, icon: Icon(LineIcons.cog)),
      ],
    );
  }

  Widget _buildBody() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(
              top: defaultPadding,
              left: defaultPadding,
              right: defaultPadding,
              bottom: defaultPadding * 2),
          child: Column(children: [
            Row(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(profileUrl), fit: BoxFit.cover)),
                ),
                SizedBox(
                  width: defaultPadding,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: titleStyle.copyWith(fontSize: 20),
                      ),
                      SizedBox(
                        height: defaultPadding / 2,
                      ),
                      Text(
                        userName,
                        style: titleStyle.copyWith(color: grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: defaultPadding,
            ),
            Row(
              children: [
                Icon(LineIcons.mapMarker, color: grey),
                SizedBox(
                  width: defaultPadding / 2,
                ),
                Text(
                  location,
                  style: titleStyle.copyWith(fontWeight: FontWeight.normal),
                )
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
                ),
                SizedBox(
                  width: defaultPadding / 2,
                ),
                Text(
                  "14",
                  style: titleStyle,
                ),
                SizedBox(
                  width: defaultPadding / 2,
                ),
                Text(
                  "Follower",
                  style: titleStyle.copyWith(fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  width: defaultPadding / 2,
                ),
                Text(
                  "*",
                  style: titleStyle,
                ),
                SizedBox(
                  width: defaultPadding / 2,
                ),
                Text(
                  "0",
                  style: titleStyle,
                ),
                SizedBox(
                  width: defaultPadding / 2,
                ),
                Text(
                  "Following",
                  style: titleStyle.copyWith(fontWeight: FontWeight.normal),
                )
              ],
            )
          ]),
        ),
        Expanded(
            child: SizedBox(
          width: double.infinity,
          child: Column(children: [
            SizedBox(
              height: defaultPadding,
            ),
            Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: defaultPadding),
                color: dark,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding),
                      child: Row(children: const [
                        Icon(LineIcons.star, color: grey),
                        SizedBox(
                          width: defaultPadding / 2,
                        ),
                        Text("Popular", style: titleStyle),
                      ]),
                    ),
                    SizedBox(
                      height: defaultPadding,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          children: List.generate(populars.length, (index) {
                        return Padding(
                          padding: EdgeInsets.only(
                              left:
                                  index == 0 ? defaultPadding : defaultPadding,
                              right: index == (populars.length - 1)
                                  ? defaultPadding
                                  : 0),
                          child: RepositoryCard(
                              title: populars[index]['title'],
                              star: populars[index]['star'],
                              language: populars[index]['language']),
                        );
                      })),
                    ),
                    SizedBox(
                      height: defaultPadding,
                    ),
                    Divider(
                      color: grey,
                      thickness: 0.1,
                    ),
                    SizedBox(
                      height: defaultPadding,
                    ),
                    Column(
                      children: List.generate(
                        2,
                        (index) {
                          return CustomListTile(
                            onTap: () {},
                            bgIconColor: myWorks[index]['bgIconColor'],
                            icon: myWorks[index]['icon'],
                            title: myWorks[index]['title'],
                            hasTrailing: true,
                            trailing: myWorks[index]['count'],
                          );
                        },
                      ),
                    ),
                  ],
                ))
          ]),
        ))
      ],
    );
  }
}
