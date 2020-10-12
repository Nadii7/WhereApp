import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whereapp_flutter/Screens/home/home.dart';
import 'package:whereapp_flutter/Widgets/default_button.dart';
import 'package:whereapp_flutter/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(
            flex: 4,
          ),
          // Logo Pic
          SvgPicture.asset(
            "assets/icons/logo.svg",
            width: 120,
            // height: 150,
          ),
          // App Name
          Text(
            "Where App",
            style: TextStyle(
              color: kTextColor,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          // App Description
          Text(
            "follow friends,family",
            style: TextStyle(
              color: Color(0xff1A0C19).withOpacity(0.57),
              fontSize: 16.0,
            ),
          ),
          Spacer(
            flex: 2,
          ),
          // Facebook button
          DefaultButton(
            color: Color(0xff4891F0),
            text: kfacebookText,
            icon: "assets/icons/facebook.svg",
            // Your Functions Here
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Home(),
                ),
              );
            },
          ),
          SizedBox(
            height: 15,
          ),
          // Google button
          DefaultButton(
            color: Color(0xffE34D60),
            text: kgoogleText,
            icon: "assets/icons/google.svg",
            // Your Functions Here
            onPress: () {},
          ),
          SizedBox(
            height: 15,
          ),
          // Apple button
          DefaultButton(
            color: Color(0xff373737),
            text: kappleText,
            icon: "assets/icons/apple.svg",
            // Your Functions Here
            onPress: () {},
          ),
          Spacer(
            flex: 4,
          ),
          // Widget Of شروط الاستخدام
          Row(
            textDirection: TextDirection.rtl,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "استخدامك لهذا التطبيق يعني موافقتك علي",
                style: TextStyle(
                  color: Color(0xff9E9E9E),
                  fontSize: 10.0,
                ),
              ),
              GestureDetector(
                // Your Function Here
                onTap: () {},
                child: Text(
                  "شروط الاستخدام والخصوصية",
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 10.0,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
