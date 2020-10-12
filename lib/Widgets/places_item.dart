import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whereapp_flutter/constants.dart';

class PlacesItem extends StatelessWidget {
  final String text;
  final String icon;
  final Function onTap;

  const PlacesItem(
      {Key key, @required this.text, @required this.icon, this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    // Places Page Bottom List
    return GestureDetector(
      // On Tap Function
      onTap: onTap,
      child: Container(
        height: 75,
        width: 110,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, 1),
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Icon
            SvgPicture.asset(
              icon,
              width: 18,
              height: 18,
            ),
            SizedBox(
              height: 8,
            ),
            // Title
            Text(
              text,
              style: TextStyle(
                color: kTextColor,
                fontSize: 12.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
