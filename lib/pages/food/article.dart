import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projet1/utils/colors.dart';
import 'package:projet1/widgets/app_icon.dart';
import 'package:projet1/widgets/big_text.dart';
import 'package:projet1/widgets/icon_and_text_widget.dart';
import 'package:projet1/widgets/small_text.dart';
//import 'package:projet1/utils/dimension.dart';
//import 'package:get/get.dart';

class article extends StatefulWidget {
  const article({Key? key}) : super(key: key);

  @override
  _articleState createState() => _articleState();
}

class _articleState extends State<article> {
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
                return Expanded(
                    flex: 11,
                    child: Container(
                        margin:
                            EdgeInsets.only(left: 20, right: 20, bottom: 10),
                        child: Row(children: [
                          Container(
                              width: 120,
                              height: 120,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                  image: DecorationImage(
                                    fit: BoxFit
                                        .cover, // give around form of picture
                                    image: AssetImage("assets/image/sadio.png"),
                                  ))),
                          Expanded(
                            flex: 11,
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                  color: Colors.white,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 10, right: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          BigText(text: "Article 1"),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          SmallText(
                                            text: "04 Jan 2022, 14:16",
                                            size: 15,
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                        ],
                                      ),
                                    ),
                                    AppIcon(
                                      icon: Icons.bookmark_border_outlined,
                                      iconColor: AppColors.mainColor,
                                      // size: 20,
                                    ),
                                  ],
                                )),
                          ),
                        ])));
              }),
        ]));
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
