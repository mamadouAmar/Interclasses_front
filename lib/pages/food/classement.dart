import 'package:flutter/material.dart';
import 'package:projet1/utils/colors.dart';
import 'package:projet1/widgets/app_icon.dart';
import 'package:projet1/widgets/big_text.dart';
import 'package:projet1/widgets/exandable_text_widget.dart';
import 'package:projet1/widgets/small_text.dart';

import 'article.dart';

class Classement extends StatefulWidget {
  const Classement({Key? key}) : super(key: key);

  @override
  _ClassementState createState() => _ClassementState();
}

class _ClassementState extends State<Classement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.mainColor,
        body: Center(
            child: Padding(
          padding: EdgeInsets.only(left: 60, right: 60),
          child: Column(
            children: [
              SizedBox(
                height: 70,
              ),
              Center(
                  child: BigText(
                      text: "Classement", color: Colors.white, size: 30)),
              SizedBox(
                height: 40,
              ),
              Container(
                child: Center(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      Center(
                          child: Container(
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                            fixedSize: Size(120, 40),
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => article()));
                          },
                          icon: Icon(
                            Icons.sports_basketball,
                          ), //icon data for elevated button
                          label: Text("Football"),
                        ),
                      )),
                      SizedBox(
                        width: 60,
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => article()));
                        },
                        icon: Icon(
                          Icons.sports_basketball,
                        ), //icon data for elevated button
                        label: Text(" "),
                      ),
                    ])),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                child: BigText(
                  text: "Football",
                  color: Colors.white,
                  size: 25,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 35,
                child: Center(
                    child: Row(
                  children: [
                    Container(
                        padding: EdgeInsets.all(10),
                        child: Row(children: [
                          SmallText(
                            text: "#",
                            color: Colors.white,
                            size: 14,
                          ),
                          SizedBox(width: 10),
                          SmallText(
                            text: "Team",
                            size: 14,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 110,
                          ),
                          SmallText(
                            text: "J",
                            size: 14,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          SmallText(
                            text: "G",
                            size: 14,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          SmallText(
                            text: "N",
                            size: 14,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          SmallText(
                            text: "P",
                            size: 14,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          SmallText(
                            text: "Pts",
                            size: 14,
                            color: Colors.white,
                          ),
                        ]))
                  ],
                )),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 35,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  color: Colors.green,
                ),
                child: Center(
                    child: Row(
                  children: [
                    SmallText(
                      text: "1",
                      color: Colors.white,
                      size: 14,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SmallText(
                      text: "DIC3",
                      size: 14,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 120,
                    ),
                    SmallText(
                      text: "2",
                      size: 14,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SmallText(
                      text: "2",
                      size: 14,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SmallText(
                      text: "0",
                      size: 14,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SmallText(
                      text: "0",
                      size: 14,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SmallText(
                      text: "6",
                      size: 14,
                      color: Colors.white,
                    ),
                  ],
                )),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 35,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  color: Colors.blue,
                ),
                child: Center(
                    child: Row(
                  children: [
                    SmallText(
                      text: "2",
                      color: Colors.white,
                      size: 14,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SmallText(
                      text: "TC2",
                      size: 14,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 120,
                    ),
                    SmallText(
                      text: "2",
                      size: 14,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SmallText(
                      text: "1",
                      size: 14,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SmallText(
                      text: "1",
                      size: 14,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SmallText(
                      text: "0",
                      size: 14,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SmallText(
                      text: "4",
                      size: 14,
                      color: Colors.white,
                    ),
                  ],
                )),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 35,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  color: Colors.blue,
                ),
                child: Center(
                    child: Row(
                  children: [
                    SmallText(
                      text: "3",
                      color: Colors.white,
                      size: 14,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SmallText(
                      text: "TC1",
                      size: 14,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 120,
                    ),
                    SmallText(
                      text: "2",
                      size: 14,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SmallText(
                      text: "1",
                      size: 14,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SmallText(
                      text: "1",
                      size: 14,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SmallText(
                      text: "0",
                      size: 14,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SmallText(
                      text: "4",
                      size: 14,
                      color: Colors.white,
                    ),
                  ],
                )),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 35,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  color: Colors.blue,
                ),
                child: Center(
                    child: Row(
                  children: [
                    SmallText(
                      text: "4",
                      color: Colors.white,
                      size: 14,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SmallText(
                      text: "DIC1",
                      size: 14,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 120,
                    ),
                    SmallText(
                      text: "2",
                      size: 14,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SmallText(
                      text: "0",
                      size: 14,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SmallText(
                      text: "0",
                      size: 14,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SmallText(
                      text: "2",
                      size: 14,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SmallText(
                      text: "0",
                      size: 14,
                      color: Colors.white,
                    ),
                  ],
                )),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                  child: Container(
                      height: 35,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        color: Colors.red,
                      ),
                      child: Row(
                        children: [
                          SmallText(
                            text: "5",
                            color: Colors.white,
                            size: 14,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SmallText(
                            text: "DIC2",
                            size: 14,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 120,
                          ),
                          SmallText(
                            text: "2",
                            size: 14,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          SmallText(
                            text: "0",
                            size: 14,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          SmallText(
                            text: "0",
                            size: 14,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          SmallText(
                            text: "2",
                            size: 14,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          SmallText(
                            text: "0",
                            size: 14,
                            color: Colors.white,
                          ),
                        ],
                      )))
            ],
          ),
        )),
        bottomNavigationBar: Column(mainAxisSize: MainAxisSize.min, children: [
          Container(
              padding:
                  EdgeInsets.only(left: 50, right: 50, top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(
                      icon: Icons.home,
                      iconColor: Colors.white,
                      backgroundColor: Colors.red),
                  AppIcon(
                      icon: Icons.explore,
                      iconColor: Colors.white,
                      backgroundColor: AppColors.mainColor),
                  AppIcon(
                      icon: Icons.add,
                      iconColor: Colors.white,
                      backgroundColor: AppColors.mainColor),
                  AppIcon(
                      icon: Icons.share,
                      iconColor: Colors.white,
                      backgroundColor: AppColors.mainColor),
                ],
              )),
        ]));
  }

  fromHeight(int i) {}
}
