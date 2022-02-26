import 'package:ept/outils/colors.dart';
import 'package:ept/widget/BigText.dart';
import 'package:ept/widget/iconApp.dart';
import 'package:ept/widget/smallText.dart';
import 'package:flutter/material.dart';

class article extends StatefulWidget {
  const article({Key? key}) : super(key: key);

  @override
  _articleState createState() => _articleState();
}

class _articleState extends State<article> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.mainColor,
        appBar: AppBar(
          backgroundColor: AppColors.appBar,
          actions: [
            IconButton(onPressed: () => {}, icon: Icon(Icons.search)),
          ],
        ),
        body: Column(children: [
          SizedBox(
            height: 30,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              // margin: EdgeInsets.only(left: 10),
              //  color: Colors.blue,
              width: 210,
              height: 100,
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
                  size: 25,
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
              height: 100,
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
                  size: 25,
                  color: Colors.white,
                ),
                label: Text(
                  "Basketball",
                  style: TextStyle(color: AppColors.textColor, fontSize: 40),
                ),
              ),
            ),
          ]),
          SizedBox(height: 30),
          Expanded(
            child: ListView.builder(
                physics: AlwaysScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                    child: Row(children: [
                      Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: AppColors.mainColor,
                              image: DecorationImage(
                                fit:
                                    BoxFit.cover, // give around form of picture
                                image: AssetImage("image/sadio.png"),
                              ))),
                      Expanded(
                        flex: 11,
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              color: AppColors.mainColor,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      BigText(
                                        text: "Article 1",
                                        color: AppColors.textColor,
                                      ),
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
                                  iconColor: AppColors.textColor,
                                  // size: 20,
                                ),
                              ],
                            )),
                      ),
                    ]),
                  );
                }),
          )
        ]));
  }
}
