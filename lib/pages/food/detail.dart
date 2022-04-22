import 'package:flutter/material.dart';
import 'package:projet1/utils/colors.dart';
import 'package:projet1/widgets/app_icon.dart';
import 'package:projet1/widgets/big_text.dart';
import 'package:projet1/widgets/exandable_text_widget.dart';
import 'package:projet1/widgets/small_text.dart';

import 'article.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    // ignore: dead_code
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () => {}, icon: Icon(Icons.arrow_back_ios)),
        ],
        title: Center(
          child: SmallText(
            text: "Football 2022/DIC3vsDIC2",
            color: Colors.white,
          ),
        ),
        backgroundColor: AppColors.appBar,
      ),
      body: Column(
        children: [
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(padding: EdgeInsets.all(10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BigText(
                  text: "DIC1",
                  color: Colors.white,
                ),
                SizedBox(
                  width: 30,
                ),
                BigText(
                  text: "3",
                  color: Colors.white,
                ),
                SizedBox(
                  width: 2,
                ),
                BigText(
                  text: "-",
                  color: Colors.white,
                ),
                SizedBox(
                  width: 2,
                ),
                BigText(
                  text: "1",
                  color: Colors.white,
                ),
                SizedBox(
                  width: 30,
                ),
                BigText(
                  text: "DIC2",
                  color: Colors.white,
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                height: 50,
                color: Colors.red,
                child: Center(child: Text("Match Detail"))),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SmallText(
                  text: "10",
                  size: 15,
                ),
                SizedBox(width: 30),
                SmallText(text: "Shooting", size: 15),
                SizedBox(width: 30),
                SmallText(text: "8", size: 15),
              ],
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SmallText(
                  text: "55",
                  size: 15,
                ),
                SizedBox(width: 30),
                SmallText(text: "Possesion", size: 15),
                SizedBox(width: 30),
                SmallText(text: "45", size: 15),
              ],
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SmallText(
                  text: "0",
                  size: 15,
                ),
                SizedBox(width: 30),
                SmallText(text: "Cards", size: 15),
                SizedBox(width: 30),
                SmallText(text: "0", size: 15),
              ],
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SmallText(
                  text: "0",
                  size: 15,
                ),
                SizedBox(width: 30),
                SmallText(text: "Card", size: 15),
                SizedBox(width: 30),
                SmallText(text: "0", size: 15),
              ],
            ),
            SizedBox(
              height: 50,
            ),
          ]),
          Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            BigText(
              text: "Autres matches",
              size: 20,
              color: Colors.white,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          ]),
        ],
      ),
    );
  }
}
