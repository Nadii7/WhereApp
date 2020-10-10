import 'package:flutter/material.dart';
import 'package:whereapp_flutter/Widgets/map_widget.dart';
import 'package:whereapp_flutter/constants.dart';

class AddPlace extends StatefulWidget {
  final Function onPressed;

  const AddPlace({Key key, this.onPressed}) : super(key: key);

  @override
  _AddPlaceState createState() => _AddPlaceState();
}

class _AddPlaceState extends State<AddPlace> {
  var _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      textDirection: TextDirection.rtl,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // Tob Widget
        Container(
          height: 240,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              )),
          child: Column(
            textDirection: TextDirection.rtl,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 8,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.black12.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              // Title
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Text(
                  "إضافة مكان جديد",
                  style: TextStyle(
                    fontSize: 24,
                    color: kTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Name
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  "الاسم",
                  textDirection: TextDirection.rtl,
                  style:
                      TextStyle(color: kTextColor, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "أدخل اسم المكان",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(color: kPrimaryLightColor),
                ),
              ),
              Divider(
                indent: 20,
                endIndent: 20,
                height: 1.0,
                color: kPrimaryLightColor,
              ),
              // Place Type
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  "أختر رمز المكان",
                  textDirection: TextDirection.rtl,
                  style:
                      TextStyle(color: kTextColor, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "رمز المكان يستخدم للتعبير عن المكان",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    color: kPrimaryLightColor,
                  ),
                ),
                leading: IconButton(
                  alignment: Alignment.centerLeft,
                  icon: Icon(_expanded ? Icons.expand_less : Icons.expand_more),
                  color: kTextColor,
                  onPressed: () {
                    setState(() {
                      _expanded = !_expanded;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
        // Map
        Stack(
          children: [
            Container(
              height: 400,
              width: double.infinity,
              child: MapPage(),
            ),

            // place type List you can edit it here
            if (_expanded)
              Container(
                height: 200,
                width: 200,
                color: kPrimaryLightColor,
              )
          ],
        ),
        // Add Button
        Container(
          width: double.infinity,
          height: 80,
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: GestureDetector(
            // on Tap Button
            onTap: widget.onPressed,
            child: Container(
                decoration: BoxDecoration(
                  gradient: kPrimaryGradientColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text(
                    "حفظ المكان",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                )),
          ),
        )
      ],
    );
  }
}
