import 'package:flutter/material.dart';
import 'package:gitapp/pages/account/account_page.dart';
import 'package:gitapp/pages/explore/explore_page.dart';
import 'package:gitapp/pages/home/home_page.dart';
import 'package:gitapp/pages/notification/notification_page.dart';
import 'package:gitapp/themes/color.dart';
import 'package:line_icons/line_icons.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int tabIndex = 0;
  onChangeTab(int index) {
    setState(() {
      tabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      bottomNavigationBar: _buildFooter(),
    );
  }

  Widget _buildBody() {
    return IndexedStack(
      index: tabIndex,
      children: const [
        HomePage(),
        NotificationPage(),
        ExplorePage(),
        AccountPage(),
      ],
    );
  }

  Widget _buildFooter() {
    return BottomNavigationBar(
      currentIndex: tabIndex,
      onTap: onChangeTab,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: primary,
      unselectedItemColor: grey,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(LineIcons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(LineIcons.bell),
          label: "Notification",
        ),
        BottomNavigationBarItem(
          icon: Icon(LineIcons.globe),
          label: "Explore",
        ),
        BottomNavigationBarItem(
          icon: Icon(LineIcons.user),
          label: "Account",
        ),
      ],
    );
  }
}
