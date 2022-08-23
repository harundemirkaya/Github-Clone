import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:gitapp/components/border_button.dart';
import 'package:gitapp/components/explore_card.dart';
import 'package:gitapp/dummy_data/explore_page_json.dart';
import 'package:gitapp/themes/color.dart';
import 'package:gitapp/utils/constant.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(appBar: _buildAppBar(), body: _buildBody()),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
        title: const Text(
          "Explore",
          style: titleStyle,
        ),
        centerTitle: false,
        bottom: TabBar(
          tabs: [
            Tab(
              child: Text("For You".toUpperCase()),
            ),
            Tab(
              child: Text("Trending".toUpperCase()),
            ),
          ],
        ));
  }

  Widget _buildBody() {
    return TabBarView(
      children: [
        ListView(
          children: [
            Column(
              children: List.generate(exploreForyou.length, (index) {
                return ExploreCard(
                  hasImageUrl: exploreForyou[index]['hasImageUrl'],
                  imageUrl: exploreForyou[index]['imageUrl'],
                  hasLanguage: exploreForyou[index]['hasLanguage'],
                  colorIconLanguage: exploreForyou[index]['colorIconLanguage'],
                  language: exploreForyou[index]['language'],
                  description: exploreForyou[index]['description'],
                  star: exploreForyou[index]['star'],
                  contributor: exploreForyou[index]['contributor'],
                  profileUrl: exploreForyou[index]['profileUrl'],
                  profileName: exploreForyou[index]['profileName'],
                  profileUsername: exploreForyou[index]['profileUsername'],
                );
              }),
            ),
            _buildFooterDescriptionSection()
          ],
        ),
        SlideInDown(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(
                    horizontal: defaultPadding, vertical: defaultPadding / 2),
                child: Row(children: [
                  BorderButton(title: "Today", onTap: () {}),
                  SizedBox(
                    width: defaultPadding / 3,
                  ),
                  BorderButton(title: "Langueage", onTap: () {}),
                  SizedBox(
                    width: defaultPadding / 3,
                  ),
                  BorderButton(title: "Spoken Language", onTap: () {}),
                ]),
              ),
              Expanded(
                  child: ListView(
                children: [
                  Column(
                    children: List.generate(exploreTrending.length, (index) {
                      return ExploreCard(
                        hasImageUrl: exploreTrending[index]['hasImageUrl'],
                        imageUrl: exploreTrending[index]['imageUrl'],
                        hasLanguage: exploreTrending[index]['hasLanguage'],
                        colorIconLanguage: exploreTrending[index]
                            ['colorIconLanguage'],
                        language: exploreTrending[index]['language'],
                        description: exploreTrending[index]['description'],
                        star: exploreTrending[index]['star'],
                        contributor: exploreTrending[index]['contributor'],
                        profileUrl: exploreTrending[index]['profileUrl'],
                        profileName: exploreTrending[index]['profileName'],
                        profileUsername: exploreTrending[index]
                            ['profileUsername'],
                      );
                    }),
                  ),
                  _buildFooterDescriptionSection()
                ],
              ))
            ],
          ),
        )
      ],
    );
  }

  Widget _buildFooterDescriptionSection() {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding * 4),
      child: Column(
        children: [
          Text(
            "Thats all for you",
            style: titleStyle,
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Text(
            "Star repositories, follow your favorite developers, and come back soon to see what we find for your next.",
            textAlign: TextAlign.center,
            style: titleStyle.copyWith(
              color: grey,
            ),
          )
        ],
      ),
    );
  }
}
