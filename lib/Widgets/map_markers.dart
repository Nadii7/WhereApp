import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UsersDots extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Stack(
        alignment: Alignment.center,
        children: [
          SvgPicture.asset(
            "assets/images/circle.svg",
            height: 100,
            width: 100,
          ),
          new Container(
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                // Avatar here
                ClipRRect(
                  borderRadius: BorderRadius.circular(40.0),
                  child: Image.asset(
                    "assets/images/avatar.jpeg",
                    fit: BoxFit.cover,
                    width: 80,
                    height: 80,
                  ),
                ),
                // Online Dot Here
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(left: 2),
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    Icons.circle,
                    size: 15,
                    color: Color(0xffA0C62D),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PlacesDots extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Icon(
            Icons.chat_bubble,
            color: Colors.white,
            size: 60,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: new SvgPicture.asset(
              "assets/icons/home.svg",
              height: 20,
              width: 20,
            ),
          ),
        ],
      ),
    );
  }
}
