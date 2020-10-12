import 'package:flutter/material.dart';
import 'package:whereapp_flutter/constants.dart';

class OverViewList extends StatelessWidget {
  final String title, subtitle;
  final Widget widget;
  final Function onTap;

  const OverViewList(
      {Key key,
      @required this.title,
      @required this.subtitle,
      @required this.widget,
      this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    // Over View Main List
    return Column(
      children: [
        ListTile(
          // title
          title: Text(
            title,
            textDirection: TextDirection.rtl,
            style: TextStyle(
              color: kTextColor,
              fontSize: 14.0,
            ),
          ),
          // suptitle
          subtitle: Text(
            subtitle,
            textDirection: TextDirection.rtl,
            style: TextStyle(
              color: kPrimary2Color.withOpacity(0.3),
              fontSize: 12.0,
            ),
          ),
          // Icons
          leading: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              widget,
            ],
          ), // on Tap Function
          // Set on Tab Functions
          onTap: onTap,
        ),
        Divider(
          indent: 20,
          endIndent: 20,
          height: 1.4,
          color: kPrimaryLightColor,
        ),
      ],
    );
  }
}
