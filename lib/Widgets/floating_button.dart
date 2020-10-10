import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants.dart';

class FloatingButtons extends StatelessWidget {
  final bool isClicked;

  const FloatingButtons({Key key, @required this.isClicked}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: isClicked
          ? Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                Row(
                  textDirection: TextDirection.rtl,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Right Icon
                    CircularButton(
                      text: "أضف مستخدم",
                      icon: "assets/icons/add_user.svg",
                      // Function To Do When Click
                      onTap: () {},
                    ),
                    // Middle Icon
                    Padding(
                      padding: const EdgeInsets.only(bottom: 60),
                      child: CircularButton(
                        text: "أضف مجموعة",
                        icon: "assets/icons/add_groub.svg",
                        // Function To Do When Click
                        onTap: () {},
                      ),
                    ),
                    // Left Icon
                    CircularButton(
                      text: "أضف جهاز تتبع",
                      icon: "assets/icons/add_device.svg",
                      // Function To Do When Click
                      onTap: () {},
                    ),
                  ],
                )
              ],
            )
          : SizedBox(
              height: 0,
            ),
    );
  }
}

class CircularButton extends StatelessWidget {
  final String text;

  final String icon;
  final Function onTap;

  CircularButton({
    @required this.text,
    @required this.icon,
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // on tap function
      onTap: onTap,
      child: Container(
        height: 90,
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Icon
            Container(
              decoration: BoxDecoration(shape: BoxShape.circle),
              width: 25,
              height: 25,
              child: SvgPicture.asset(
                icon,
                color: kPrimaryColor,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // Text
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(color: kTextColor, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
