import 'package:flutter/material.dart';
import 'package:whereapp_flutter/constants.dart';

class TermsConditionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ِشروط الاستخدام والخصوصية"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                height: 500,
                color: kPrimaryColor,
              ),
              Container(
                height: 500,
                color: kPrimary2Color,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
