import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';

class DefaultAppBar extends StatelessWidget {
  final String title, subtitle;

  const DefaultAppBar({Key key, this.title, this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: const EdgeInsets.only(bottom: 25.0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 4),
          )
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
      // App Bar Column
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.only(
          left: 16.0,
          right: 16.0,
          top: 16.0,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // First Column Of App Bar
            Container(
              child: Badge(
                elevation: 0,
                position: BadgePosition(bottom: 17, end: -2),
                badgeColor: Colors.transparent,
                badgeContent: Icon(Icons.circle, size: 10.0, color: Colors.red),
                child: SvgPicture.asset(
                  "assets/icons/notificatin.svg",
                  height: 30,
                ),
              ),
            ),
            // Second Column of App Bar
            Expanded(
              child: Column(
                textDirection: TextDirection.rtl,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Head Text
                  Text(
                    title,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  // Sub Title
                  Text(
                    subtitle,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      color: kPrimaryLightColor,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
