import 'package:ept/outils/colors.dart';
import 'package:ept/widget/BigText.dart';
import 'package:ept/widget/iconApp.dart';
import 'package:ept/widget/smallText.dart';
import 'package:flutter/material.dart';

class index extends StatefulWidget {
  const index({Key? key}) : super(key: key);

  @override
  _indexState createState() => _indexState();
}

class _indexState extends State<index> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Column(children: [
        Center(
          child: Text(
            "Toutes les informations sur les interclasses de football et de basketball",
            style: TextStyle(fontSize: 40, color: AppColors.textColor),
          ),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            // margin: EdgeInsets.only(left: 10),
            //  color: Colors.blue,
            width: 210,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.blue,
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
                "Se connecter",
                style: TextStyle(color: AppColors.textColor, fontSize: 40),
              ),
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Container(
            width: 220,
            height: 50,
            decoration: BoxDecoration(
              color: AppColors.mainColor,
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
                "S'inscrire",
                style: TextStyle(color: AppColors.textColor, fontSize: 40),
              ),
            ),
          ),
        ]),
      ]),
    );
  }
}
