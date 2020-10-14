import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whereapp_flutter/Screens/selectedUser/selected_user.dart';

import '../../../../constants.dart';

class UsersList extends StatefulWidget {
  final String title;
  final Function onTap;
  final List<Map<String, dynamic>> dataList;

  const UsersList(
      {Key key, @required this.title, @required this.dataList, this.onTap})
      : super(key: key);

  @override
  _UsersListState createState() => _UsersListState();
}

class _UsersListState extends State<UsersList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      textDirection: TextDirection.rtl,
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // Title
        Container(
          height: 35,
          width: double.infinity,
          alignment: Alignment.centerRight,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.symmetric(
                  horizontal: BorderSide(
                color: Color(0xff654062).withOpacity(0.16),
                width: 1,
              ))),
          child: Text(
            widget.title,
            style: TextStyle(
              color: kTextColor,
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        // List of Users
        Expanded(
                      child: ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemCount: widget.dataList.length,
            itemBuilder: (context, index) => Column(
              children: [
                ListTile(
                  // Name
                  title: Text(
                    widget.dataList[index]['title'],
                    textDirection: TextDirection.rtl,
                    style: TextStyle(color: kTextColor, fontSize: 14),
                  ),
                  // City
                  subtitle: Text(
                    widget.dataList[index]['city'],
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      color: kTextColor.withOpacity(0.3),
                      fontSize: 12,
                    ),
                  ),
                  // Icons
                  leading: Container(
                    height: double.infinity,
                    width: 50,
                    margin: EdgeInsets.only(left: 5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // Active and deActive buttons
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              widget.dataList[index]['isSelected'] =
                                  !widget.dataList[index]['isSelected'];
                            });
                          },
                          child: SvgPicture.asset(
                            widget.dataList[index]['isSelected']
                                ? "assets/icons/a_notificatin.svg"
                                : "assets/icons/d_notificatin.svg",
                            height: 15,
                            width: 15,
                          ),
                        ),
                        SizedBox(width: 15),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              widget.dataList[index]['isSelected2'] =
                                  !widget.dataList[index]['isSelected2'];
                            });
                          },
                          child: SvgPicture.asset(
                            widget.dataList[index]['isSelected2']
                                ? "assets/icons/locate.svg"
                                : "assets/icons/d_locate.svg",
                            height: 10,
                            width: 15,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Avatar and Online Dot
                  trailing: Container(
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        // Avatar here
                        ClipRRect(
                          borderRadius: BorderRadius.circular(40.0),
                          child: Image.asset(
                            widget.dataList[index]['image'],
                            fit: BoxFit.cover,
                            width: 50,
                            height: 50,
                          ),
                        ),
                        // Online Dot Here
                        Container(
                          alignment: Alignment.center,
                          width: 13,
                          height: 13,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            Icons.circle,
                            size: 10,
                            color: widget.dataList[index]['isSelected']
                                ? Color(0xffA0C62D)
                                : Color(0xff9E9E9E),
                          ),
                        )
                      ],
                    ),
                  ),
                  // on Tap Function
                  onTap: () {
                    // Set on Tab Functions
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SelectedUserScreen(),
                      ),
                    );
                  },
                ),
                index == widget.dataList.length - 1
                    ? SizedBox()
                    : Divider(
                        indent: 20,
                        endIndent: 20,
                        height: 1.0,
                        color: kPrimaryLightColor,
                      ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
