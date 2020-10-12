import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whereapp_flutter/Screens/login/components/body.dart';
import 'package:whereapp_flutter/constants.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = "/login";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      body: Stack(
        children: [
          SvgPicture.asset(
            "assets/icons/map_bg.svg",
            fit: BoxFit.fill,
          ),
          new Body(),
        ],
      ),
    );
  }
}
