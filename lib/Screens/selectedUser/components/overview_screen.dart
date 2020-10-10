import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:whereapp_flutter/Widgets/map_widget.dart';
import 'package:whereapp_flutter/Widgets/overview_list.dart';

import '../../../constants.dart';

class OverviewScreen extends StatefulWidget {
  @override
  _OverviewScreenState createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen> {
  // Overview List Dummy Data
  final List<Map<String, dynamic>> dataList = [
    {
      'title': 'أخر تواجد بالقاهرة',
      'suptitle': 'منذ 10 دقائق',
      'icon': "assets/icons/place.svg",
    },
    {
      'title': 'حالة البطارية الآن',
      'suptitle': 'منذ 10 دقائق',
      'icon': "12%",
    },
    {
      'title': 'متوسط السرعة الان',
      'suptitle': 'منذ 10 دقائق',
      'icon': "67km",
    },
    {
      'title': 'اشعارات تغيير المكان',
      'suptitle': 'سيتم ارسال الاشعارات',
      'icon': true,
    },
    {
      'title': 'الغاء المتابعة',
      'suptitle': 'الغاء متابعة هذا الشخص',
      'icon': "assets/icons/delete.svg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Map Container
        Expanded(
          child: MapPage(),
        ),
        // Overview List Container
        Container(
          color: Color(0xff757575),
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.only(bottom: 35),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Over View List
                  OverViewList(
                    title: dataList[0]['title'],
                    subtitle: dataList[0]['suptitle'],
                    widget: SvgPicture.asset(
                      dataList[0]['icon'],
                      height: 25,
                    ),
                  ),
                  OverViewList(
                    title: dataList[1]['title'],
                    subtitle: dataList[1]['suptitle'],
                    widget: Text(
                      dataList[1]['icon'],
                      style: TextStyle(
                        color: kPrimaryLightColor,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  OverViewList(
                    title: dataList[2]['title'],
                    subtitle: dataList[2]['suptitle'],
                    widget: Text(
                      dataList[2]['icon'],
                      style: TextStyle(
                        color: kPrimaryLightColor,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  OverViewList(
                    title: dataList[3]['title'],
                    subtitle: dataList[3]['suptitle'],
                    widget: FlutterSwitch(
                      width: 60.0,
                      height: 30.0,
                      toggleSize: 25.0,
                      activeColor: kPrimaryColor,
                      value: dataList[3]['icon'],
                      borderRadius: 30.0,
                      onToggle: (val) {
                        setState(() {
                          dataList[3]['icon'] = val;
                        });
                      },
                    ),
                  ),
                  OverViewList(
                    title: dataList[4]['title'],
                    subtitle: dataList[4]['suptitle'],
                    widget: SvgPicture.asset(
                      dataList[4]['icon'],
                      height: 25,
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
