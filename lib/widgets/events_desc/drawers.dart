import 'package:flutter/material.dart';
import 'package:events_page/constants.dart';

import '../../category.dart';
import '../../events.dart';

class EventDrawer extends StatefulWidget {
  static Data data1;
  static Data1 data2;
  @override
  _EventDrawerState createState() => _EventDrawerState();
}

class _EventDrawerState extends State<EventDrawer> {
  @override
  Widget build(BuildContext context) {
    print(2);
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      child: Drawer(
        child: SafeArea(
          child: Container(
            color: Color(0xaa000000),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Text(
                              EventDrawer.data1.name,
                              style: kEventTextStyle,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            EventDrawer.data2.name,
                            style: kCategoryTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          right: 30.0, left: 30, bottom: 10),
                      child: Container(
                        decoration: eventDesc2,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Delegate Card",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white),
                              ),
                              Text(
                                "( ${EventDrawer.data1.delCardType} )",
                                style: TextStyle(
                                    fontSize: 17, color: Colors.white),
                              ),
                              Text(
                                "Team Size",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white),
                              ),
                              Container(
                                height: 35,
                                width: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        width: 1,
                                        color: Colors.white,
                                        style: BorderStyle.solid)),
                                child: Center(
                                  child: Text(
                                    "${EventDrawer.data1.minTeamSize.toString()} - ${EventDrawer.data1.maxTeamSize.toString()}",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 40, right: 40, top: 40, bottom: 20),
                    child: Container(
                      height: 60,
                      width: 100,
                      child: Center(
                          child: Text(
                        "REGISTER NOW",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      )),
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          // shape: BoxShape.circle,
                          borderRadius: BorderRadius.circular(100),
                          // boxShadow: [
                          //   BoxShadow(
                          //       color: Colors.grey[600],
                          //       offset: Offset(4.0, 4.0),
                          //       blurRadius: 5.0,
                          //       spreadRadius: 0.5),
                          //   BoxShadow(
                          //       color: Colors.white,
                          //       offset: Offset(-4.0, -4.0),
                          //       blurRadius: 5.0,
                          //       spreadRadius: 0.5),
                          // ],
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color(0xaaeeeeee),
                                Color(0xaae0e0e0),
                                Color(0xaabdbdbd),
                                Color(0xaa9e9e9e),
                              ],
                              stops: [
                                0.1,
                                0.3,
                                0.8,
                                1
                              ])),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0, bottom: 10),
                        child: Text(
                          "Description:",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w100),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20),
                        child: Container(
                          height: 150,
                          child: ListView(children: [
                            Padding(
                              padding: EdgeInsets.all(8),
                              child: Text(
                                //"He my polite be object oh change. Consider no mr am overcame yourself throwing sociable children. Hastily her totally conduct may. My solid by stuff first smile fanny. Humoured how advanced mrs elegance sir who. Home sons when them dine do want to. Estimating themselves unsatiable imprudence an he at an. Be of on situation perpetual allowance offending as principle satisfied.   ",
                                EventDrawer.data2.description,
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w300),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
