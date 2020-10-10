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
    return Container(
      child: SingleChildScrollView(
        child: Column(
          textDirection: TextDirection.rtl,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Title
            Container(
              width: double.infinity,
              color: Colors.white,
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: Text(
                widget.title,
                style: TextStyle(
                  color: kTextColor,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // List of Favorite
            ListView.builder(
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
                      style: TextStyle(
                        color: kTextColor,
                      ),
                    ),
                    // City
                    subtitle: Text(
                      widget.dataList[index]['city'],
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        color: kPrimaryLightColor,
                      ),
                    ),
                    // Icons
                    leading: widget.dataList[index]['isSelected']
                        ? SizedBox(
                            width: 60,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/a_notificatin.svg",
                                  height: 20,
                                ),
                                Spacer(),
                                SvgPicture.asset(
                                  "assets/icons/locate.svg",
                                  height: 18,
                                ),
                              ],
                            ),
                          )
                        : SizedBox(
                            width: 60,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/d_notificatin.svg",
                                  height: 20,
                                ),
                                Spacer(),
                                SvgPicture.asset(
                                  "assets/icons/d_locate.svg",
                                  height: 18,
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
                                  ? Colors.green
                                  : Colors.grey.withOpacity(0.5),
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
                  Divider(
                    indent: 20,
                    endIndent: 20,
                    height: 1.0,
                    color: kPrimaryLightColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
