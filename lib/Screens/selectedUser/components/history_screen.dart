import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whereapp_flutter/constants.dart';

class HistoryScreen extends StatefulWidget {
  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 4000), vsync: this);
    animation = Tween(begin: 0.0, end: 1.0).animate(controller)
      ..addListener(() {
        setState(() {
          // the state that has changed here is the animation object’s value
        });
      });
  }

  @override
  void dispose() {
    controller.stop();
    super.dispose();
  }

  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      color: Colors.white,
      padding: EdgeInsets.only(bottom: 15, left: 8, right: 8),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //first Data picker
              FlatButton(
                onPressed: () => _selectDate(context),
                color: kBgColor,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "${selectedDate.toLocal()}".split(' ')[0],
                      style: TextStyle(color: kTextColor, fontSize: 11),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Icon(
                      Icons.expand_more,
                      size: 20,
                    ),
                  ],
                ),
              ),
              // Buttons
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // previous button
                    IconButton(
                        icon: SvgPicture.asset(
                          "assets/icons/previous.svg",
                          height: 30,
                        ),
                        onPressed: () {
                          controller.stop();
                        }),
                    // start button
                    IconButton(
                        icon: SvgPicture.asset(
                          "assets/icons/play.svg",
                          height: 30,
                        ),
                        onPressed: () {
                          controller.forward();
                        }),
                    // next button
                    IconButton(
                        icon: SvgPicture.asset(
                          "assets/icons/next.svg",
                          height: 30,
                        ),
                        onPressed: () {
                          controller.repeat();
                        }),
                  ],
                ),
              ),
              //Second Data picker
              FlatButton(
                onPressed: () => _selectDate(context),
                color: kBgColor,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "${selectedDate.toLocal()}".split(' ')[0],
                      style: TextStyle(
                        color: kTextColor,
                        fontSize: 11,
                      ),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Icon(
                      Icons.expand_more,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
          // Progress Bar
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            child: LinearProgressIndicator(
              value: animation.value,
              backgroundColor: kPrimaryLightColor,
              minHeight: 6,
              valueColor: new AlwaysStoppedAnimation<Color>(kPrimaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
