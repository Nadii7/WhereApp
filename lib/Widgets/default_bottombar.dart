import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';

class DefaultBottomBar extends StatelessWidget {
  final int currentPage;
  final Function onTap;
// Bottom Bar
  const DefaultBottomBar({Key key, @required this.currentPage, this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      currentIndex: currentPage,
      onTap: onTap,
      selectedItemColor: kTextColor,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      selectedIconTheme: IconThemeData(
        color: kPrimaryColor,
      ),
      unselectedIconTheme: IconThemeData(
        color: kPrimaryLightColor,
      ),
      unselectedItemColor: kPrimaryLightColor,
      items: [
        BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(6.0),
              child: new SvgPicture.asset(
                currentPage == 0
                    ? "assets/icons/settings.svg"
                    : "assets/icons/d_settings.svg",
                height: 20,
                width: 20,
              ),
            ),
            label: "الاعدادات"),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.all(6.0),
            child: new SvgPicture.asset(
              currentPage == 1
                  ? "assets/icons/users.svg"
                  : "assets/icons/d_users.svg",
              height: 20,
              width: 20,
            ),
          ),
          label: "المستخدمين",
        ),
      ],
    );
  }
}
