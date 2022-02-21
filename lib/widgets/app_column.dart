import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projet1/utils/colors.dart';
import 'package:projet1/widgets/big_text.dart';
import 'package:projet1/widgets/icon_and_text_widget.dart';
import 'package:projet1/widgets/small_text.dart';

class AppColumn extends StatelessWidget {
  final String texte;
  const AppColumn({Key? key, required this.texte}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      BigText(
        text: texte,
        size: 26,
      ),
      SizedBox(height: 10),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Wrap(
          children: List.generate(
              5,
              (index) => Icon(
                    Icons.star,
                    color: AppColors.mainColor,
                  )),
        ),
        SizedBox(
          width: 10,
        ),
        SmallText(text: "4.5"),
        SizedBox(
          width: 10,
        ),
        SmallText(text: "1287"),
        SizedBox(
          width: 10,
        ),
        SmallText(text: "comment")
      ]),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconAndTextWidget(
              icon: Icons.circle_sharp,
              text: "Normal",
              iconColor: Colors.yellow),
          IconAndTextWidget(
              icon: Icons.location_on,
              text: "1.7km",
              iconColor: AppColors.mainColor),
          IconAndTextWidget(
              icon: Icons.access_time_rounded,
              text: "32min",
              iconColor: Colors.blue)
        ],
      )
    ]);
  }
}
