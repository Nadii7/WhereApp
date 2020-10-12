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
            "assets/images/user2.svg",
            height: 104,
            width: 102,
          ),
          SvgPicture.asset(
            "assets/images/user.svg",
            height: 100,
            width: 100,
          ),
          new Container(
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                // Avatar here
                Padding(
                  padding: const EdgeInsets.only(bottom: 10, right: 2),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40.0),
                    child: Image.asset(
                      "assets/images/avatar.jpeg",
                      fit: BoxFit.cover,
                      width: 75,
                      height: 75,
                    ),
                  ),
                ),
                // Online Dot Here
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(left: 10, bottom: 10),
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    Icons.circle,
                    size: 13,
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
          SvgPicture.asset(
            "assets/images/place2.svg",
            height: 53,
            width: 52,
          ),
          SvgPicture.asset(
            "assets/images/place.svg",
            height: 50,
            width: 50,
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
