import 'package:flutter/material.dart';

import '../constants.dart';

class DefaultActionButton extends StatelessWidget {
  final bool isClicked;
  final Function onPressed;

  const DefaultActionButton({Key key,@required this.isClicked, this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration:
          BoxDecoration(color: kPrimaryLightColor, shape: BoxShape.circle),
      padding: EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            gradient: kPrimaryGradientColor, shape: BoxShape.circle),
        width: 60,
        height: 60,
        child: IconButton(
            icon:
                Icon(isClicked ? Icons.close : Icons.add, color: Colors.white),
            enableFeedback: true,
            onPressed: onPressed),
      ),
    );
  }
}
