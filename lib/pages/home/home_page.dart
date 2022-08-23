import 'package:flutter/material.dart';
import 'package:gitapp/dummy_data/home_page_json.dart';
import 'package:gitapp/themes/color.dart';
import 'package:gitapp/utils/constant.dart';
import 'package:line_icons/line_icons.dart';

import '../../components/box_button.dart';
import '../../components/circle_button.dart';
import '../../components/custom_listtile.dart';
import '../../components/tile_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(size),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text(
        "Home",
        style: titleStyle,
      ),
      centerTitle: false,
      actions: [
        IconButton(onPressed: () {}, icon: Icon(LineIcons.search)),
        IconButton(onPressed: () {}, icon: Icon(LineIcons.plusCircle))
      ],
    );
  }

  Widget _buildBody(Size size) {
    return ListView(
      physics: ClampingScrollPhysics(),
      children: [
        SizedBox(
          height: defaultPadding,
        ),
        TitleSection(
          title: "My Work",
          trailing: Icon(
            LineIcons.horizontalEllipsis,
            color: grey,
          ),
        ),
        SizedBox(
          height: defaultPadding,
        ),
        Column(
          children: List.generate(
            myWorks.length,
            (index) {
              return CustomListTile(
                onTap: () {},
                bgIconColor: myWorks[index]['bgIconColor'],
                icon: myWorks[index]['icon'],
                title: myWorks[index]['title'],
              );
            },
          ),
        ),
        SizedBox(
          height: defaultPadding,
        ),
        Divider(
          thickness: 0.3,
          color: grey,
        ),
        SizedBox(
          height: defaultPadding,
        ),
        TitleSection(title: "Favorites"),
        Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: BoxButton(
            title: "Add Favorite",
            bgColor: white,
            onTap: () {},
          ),
        ),
        SizedBox(
          height: defaultPadding,
        ),
        Divider(
          thickness: 0.3,
          color: grey,
        ),
        SizedBox(
          height: defaultPadding,
        ),
        TitleSection(title: "Shortcuts"),
        Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: defaultPadding,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: Stack(
                    children: List.generate(shortcuts.length, (index) {
                  return Positioned(
                      left: index * (size.width / shortcuts.length) -
                          (size.width / 2.3),
                      right: 0,
                      child: CircleIcon(
                        icon: shortcuts[index]['icon'],
                        bgColor: shortcuts[index]['bgColor'],
                      ));
                })),
              ),
              SizedBox(
                height: defaultPadding,
              ),
              Text(
                "The things you need, one tap away",
                style: titleStyle,
              ),
              Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: BoxButton(
                  title: "Get Started",
                  bgColor: white,
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: defaultPadding * 2,
        )
      ],
    );
  }
}
