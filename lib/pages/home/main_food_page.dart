import 'package:flutter/material.dart';

import 'package:projet1/pages/home/index.dart';
import 'package:projet1/utils/colors.dart';
import 'package:projet1/widgets/big_text.dart';
import 'package:projet1/widgets/small_text.dart';

class mainFoodPage extends StatefulWidget {
  const mainFoodPage({Key? key}) : super(key: key);

  @override
  _mainFoodPageState createState() => _mainFoodPageState();
}

class _mainFoodPageState extends State<mainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
            child: Container(
                margin: EdgeInsets.only(top: 45, bottom: 15),
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        BigText(
                            text: "Country",
                            color: AppColors.mainColor,
                            size: 30),
                        Row(
                          children: [
                            SmallText(
                              text: "City",
                              color: Colors.black54,
                            ),
                            Icon(Icons.arrow_drop_down_rounded),
                          ],
                        )
                      ],
                    ),
                    Center(
                        child: Container(
                            width: 45,
                            height: 45,
                            child: Icon(Icons.search, color: Colors.white),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              //color: Colors.blue),
                              color: AppColors.mainColor,
                            )))
                  ],
                ))),
        Expanded(
            child: SingleChildScrollView(
          child: foodPageBody(),
        )),
      ],
    ));
  }
}
