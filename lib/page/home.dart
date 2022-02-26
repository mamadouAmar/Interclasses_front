import 'package:ept/outils/colors.dart';
import 'package:ept/widget/BigText.dart';
import 'package:ept/widget/iconApp.dart';
import 'package:ept/widget/smallText.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.mainColor,
        appBar: AppBar(
          title: BigText(
            text: "InterClassApp",
            color: AppColors.textColor,
          ),
          backgroundColor: AppColors.appBar,
          actions: [
            IconButton(onPressed: () => {}, icon: Icon(Icons.search)),
          ],
        ),
        body: Column(children: [
          Container(
            // height: Dimension.pageViewContainer,
            child: Image(
              image: AssetImage("image/sadio.png"),
              width: 800,
              height: 200,
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              // margin: EdgeInsets.only(left: 10),
              //  color: Colors.blue,
              width: 210,
              height: 160,
              decoration: BoxDecoration(
                color: AppColors.activeButtonColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: TextButton.icon(
                onPressed: null,
                icon: Icon(
                  Icons.sports_soccer,
                  size: 40,
                  color: Colors.white,
                ),
                label: Text(
                  "Football",
                  style: TextStyle(color: AppColors.textColor, fontSize: 40),
                ),
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Container(
              width: 200,
              height: 160,
              decoration: BoxDecoration(
                color: AppColors.ColorMoyen,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: TextButton.icon(
                onPressed: null,
                icon: Icon(
                  Icons.sports_baseball,
                  size: 40,
                  color: Colors.white,
                ),
                label: Text(
                  "Basketball",
                  style: TextStyle(color: AppColors.textColor, fontSize: 40),
                ),
              ),
            ),
          ]),
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                      margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                      child: SafeArea(
                          child: SingleChildScrollView(
                              child: Container(
                                  //height: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                      topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                    ),
                                    //color: Colors.white,
                                  ),
                                  child: Padding(
                                      padding:
                                          EdgeInsets.only(left: 10, right: 10),
                                      child: Column(children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                BigText(
                                                  text: "Football 2022",
                                                  color: Colors.white,
                                                  size: 26,
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                SmallText(
                                                  text: "Phase de Poule",
                                                  size: 18,
                                                  color: Colors.white,
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                              ],
                                            ),
                                            AppIcon(
                                                icon: Icons.arrow_forward_ios,
                                                size: 50,
                                                iconColor: Colors.white,
                                                backgroundColor:
                                                    AppColors.mainColor),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                                width: 350,
                                                height: 100,
                                                decoration: BoxDecoration(
                                                  color: AppColors.ColorClair,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(10),
                                                    bottomRight:
                                                        Radius.circular(10),
                                                    topLeft:
                                                        Radius.circular(10),
                                                    bottomLeft:
                                                        Radius.circular(10),
                                                  ),
                                                  //color: Colors.white,
                                                ),
                                                child: Column(
                                                  children: [
                                                    Container(
                                                        child: Row(
                                                      children: [
                                                        BigText(
                                                          text: "TC1",
                                                          color: Colors.white,
                                                        ),
                                                        BigText(
                                                          text: "vs",
                                                          color: Colors.white,
                                                        ),
                                                        BigText(
                                                          text: "TC2",
                                                          color: Colors.white,
                                                        ),
                                                      ],
                                                    )),
                                                    Container(
                                                        child: Row(
                                                      children: [
                                                        BigText(
                                                          text: "0",
                                                          color: Colors.white,
                                                        ),
                                                        BigText(
                                                          text: "-",
                                                          color: Colors.white,
                                                        ),
                                                        BigText(
                                                          text: "0",
                                                          color: Colors.white,
                                                        ),
                                                      ],
                                                    ))
                                                  ],
                                                )),
                                            Container(
                                                width: 350,
                                                height: 100,
                                                decoration: BoxDecoration(
                                                  color: AppColors.ColorMoyen,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(10),
                                                    bottomRight:
                                                        Radius.circular(10),
                                                    topLeft:
                                                        Radius.circular(10),
                                                    bottomLeft:
                                                        Radius.circular(10),
                                                  ),
                                                  //color: Colors.white,
                                                ),
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        BigText(
                                                          text:
                                                              "Samedi 29-05-2022",
                                                          color: Colors.white,
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        BigText(
                                                          text: "17h-15min",
                                                          color: Colors.white,
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                )),
                                          ],
                                        )
                                      ]))))));
                }),
          )
        ]),
        bottomNavigationBar: Column(mainAxisSize: MainAxisSize.min, children: [
          Container(
              color: AppColors.ColorClair,
              padding:
                  EdgeInsets.only(left: 50, right: 50, top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(
                      icon: Icons.home,
                      iconColor: Colors.white,
                      backgroundColor: AppColors.mainColor),
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
}
