import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gitapp/themes/color.dart';
import 'package:gitapp/utils/constant.dart';

import '../../components/border_button.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
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
        "Notification",
        style: titleStyle,
      ),
      centerTitle: false,
    );
  }

  Widget _buildBody(Size size) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: Row(children: [
            BorderButton(
              title: "Inbox",
              onTap: () {},
            ),
            SizedBox(
              width: defaultPadding / 2,
            ),
            BorderButton(
              title: "Unread",
              hasTrailingIcon: false,
              onTap: () {},
            ),
            SizedBox(
              width: defaultPadding / 2,
            ),
            BorderButton(
              title: "Repository",
              onTap: () {},
            ),
          ]),
        ),
        Expanded(
            child: Container(
          width: size.width,
          color: black,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/images/notification.svg",
                  width: size.width / 1.5,
                ),
                SizedBox(
                  height: defaultPadding * 2,
                ),
                Text(
                  "All caught up!",
                  style: titleStyle.copyWith(fontSize: 24),
                ),
                SizedBox(
                  height: defaultPadding,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: defaultPadding * 2),
                  child: Text(
                    textAlign: TextAlign.center,
                    "Take a break, write some code, and do what you do best.",
                    style: subTitleStyle.copyWith(color: grey, fontSize: 18),
                  ),
                ),
              ]),
        )),
      ],
    );
  }
}
