import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
  final List<Map<String, String>> dataList = [
    {'title': 'المنزل', 'icon': "assets/icons/home.svg"},
    {'title': 'المدرسة', 'icon': "assets/icons/school.svg"},
    {'title': 'العمل', 'icon': "assets/icons/work.svg"},
  ];

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
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              )),
          child: Column(
            textDirection: TextDirection.rtl,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 8,
                  width: 75,
                  decoration: BoxDecoration(
                      color: Colors.black12.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              // Title
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Text(
                  "إضافة مكان جديد",
                  style: TextStyle(
                    fontSize: 18,
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
                subtitle: Column(
                  children: [
                    TextField(
                      textDirection: TextDirection.rtl,
                      cursorColor: kPrimaryColor,
                      decoration: InputDecoration(
                        hintText: "أدخل اسم المكان",
                        // textDirection: TextDirection.rtl,
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          color: kPrimaryColor.withOpacity(0.3),
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
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
                subtitle: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    textDirection: TextDirection.rtl,
                    children: [
                      new DropdownButtonFormField(
                        icon: Icon(Icons.expand_more),
                        decoration: InputDecoration(
                          alignLabelWithHint: true,
                          hintText: "رمز المكان يستخدم للتعبير عن المكان",
                          hintStyle: TextStyle(
                            color: kPrimaryColor.withOpacity(0.3),
                            fontSize: 12,
                          ),
                          border: InputBorder.none,
                        ),
                        items: dataList.map((e) {
                          return new DropdownMenuItem<Map<String, String>>(
                            value: e,
                            child: Container(
                              child: Row(
                                textDirection: TextDirection.rtl,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  new Text(
                                    e['title'],
                                    textDirection: TextDirection.rtl,
                                  ),
                                  new SvgPicture.asset(e['icon']),
                                ],
                              ),
                            ),
                          );
                        }).toList(),
                        onChanged: (_) {},
                      ),
                    ],
                  ),
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
          height: 65,
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 10),
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
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                )),
          ),
        )
      ],
    );
  }
}
