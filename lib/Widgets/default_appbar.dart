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
      height: 150,
      margin: const EdgeInsets.only(bottom: 25.0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            spreadRadius: 4,
            blurRadius: 10,
            offset: Offset(0, 0),
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
                position: BadgePosition.bottomStart(start: 4, bottom: 8),
                badgeColor: Colors.transparent,
                badgeContent: Container(
                    width: 11,
                    height: 11,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6)),
                    child: Icon(Icons.circle,
                        size: 10.0, color: Color(0xffD0021B))),
                child: SvgPicture.asset(
                  "assets/icons/notificatin.svg",
                  height: 20,
                  width: 20,
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
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  // Sub Title
                  Text(
                    subtitle,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      color: kTextColor.withOpacity(0.3),
                      fontSize: 12.0,
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
