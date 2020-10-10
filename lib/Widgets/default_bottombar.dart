import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';

class DefaultBottomBar extends StatelessWidget {
  final int currentPage;

  const DefaultBottomBar({Key key, @required this.currentPage})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentPage,
      selectedItemColor: kTextColor,
      iconSize: 30,
      selectedFontSize: 16,
      unselectedFontSize: 16,
      selectedIconTheme: IconThemeData(
        color: kPrimaryColor,
      ),
      unselectedIconTheme: IconThemeData(
        color: kPrimaryLightColor,
      ),
      unselectedItemColor: kPrimaryLightColor,
      items: [
        BottomNavigationBarItem(
            icon: new Icon(
              Icons.settings,
            ),
            label: "الاعدادات"),
        BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: new SvgPicture.asset("assets/icons/users.svg"),
            ),
            label: "المستخدمين"),
      ],
    );
  }
}
