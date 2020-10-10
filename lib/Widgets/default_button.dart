import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final String icon;
  final Color color;
  final Function onPress;
  const DefaultButton({
    Key key,
    @required this.text,
    @required this.icon,
    @required this.color,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      child: FlatButton(
          height: 60,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
          onPressed: onPress,
          color: color,
          child: SizedBox(
            width: double.infinity,
            child: Row(
              textDirection: TextDirection.rtl,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Icon
                SvgPicture.asset(
                  icon,
                  width: 30,
                ),
                SizedBox(
                  width: 20,
                ),
                // Text
                SizedBox(
                  width: 220,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        text,
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
