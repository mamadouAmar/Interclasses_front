import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projet1/utils/colors.dart';
import 'package:projet1/widgets/app_icon.dart';
import 'package:projet1/widgets/big_text.dart';
import 'package:projet1/widgets/icon_and_text_widget.dart';
import 'package:projet1/widgets/small_text.dart';

import '../../widgets/exandable_text_widget.dart';
//import 'package:projet1/utils/dimension.dart';
//import 'package:get/get.dart';

class foodPageBody extends StatefulWidget {
  const foodPageBody({Key? key}) : super(key: key);

  @override
  _foodPageBodyState createState() => _foodPageBodyState();
}

class _foodPageBodyState extends State<foodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var currentPageValue = 0.0;
  double scaleFactor = 0.8;
  //double _height = Dimensions.pageViewContainer;
  double _height = 220;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        currentPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        title: BigText(
          text: "InterClassApp",
          color: Colors.white,
        ),
        backgroundColor: AppColors.appBar,
        actions: [
          IconButton(onPressed: () => {}, icon: Icon(Icons.search)),
        ],
      ),
      body: Column(children: [
        Container(
            // color: Colors.redAccent,
            height: 320,
            child: PageView.builder(
              itemCount: 5,
              itemBuilder: (context, position) {
                return _buildPageItem(position);
              },
            )),
        SizedBox(height: 30),
        ListView.builder(
            physics: AlwaysScrollableScrollPhysics(),
            shrinkWrap: true,
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
                                  padding: EdgeInsets.only(left: 10, right: 10),
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
                                        Column(
                                          children: [
                                            Row(
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
                                            ),
                                            Row(
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
                                            )
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                BigText(
                                                  text: "Samedi 29-05-2022",
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
                                        ),
                                      ],
                                    )
                                  ]))))));
            }),
      ]),
      bottomNavigationBar: Column(mainAxisSize: MainAxisSize.min, children: [
        Container(
            color: Color.fromARGB(255, 4, 6, 87),
            padding: EdgeInsets.only(left: 50, right: 50, top: 10, bottom: 10),
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
      ]),
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = new Matrix4.identity();
    if (index == currentPageValue.floor()) {
      var currScale = 1 - (currentPageValue - index) * (1 - scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == currentPageValue.floor() + 1) {
      var currScale =
          scaleFactor + (currentPageValue - index + 1) * (1 - scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - scaleFactor) / 2, 1);
    }
    return Transform(
        transform: matrix,
        child: Stack(children: [
          Container(
            // height: Dimension.pageViewContainer,
            margin: EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xff69c5df),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/image/sadio.png"))),
          ),
        ]));
  }
}
