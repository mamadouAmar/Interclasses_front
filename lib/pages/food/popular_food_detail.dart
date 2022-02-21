import 'package:flutter/material.dart';
import 'package:projet1/widgets/app_column.dart';
import 'package:projet1/widgets/app_icon.dart';
import 'package:projet1/widgets/exandable_text_widget.dart';

import '../../utils/colors.dart';
import '../../widgets/big_text.dart';
import '../../widgets/icon_and_text_widget.dart';
import '../../widgets/small_text.dart';

class PopularFoodDetail extends StatefulWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  _PopularFoodDetailState createState() => _PopularFoodDetailState();
}

class _PopularFoodDetailState extends State<PopularFoodDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: 350,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/pic/sadio.png"),
                ),
              ),
            ),
          ),
          Positioned(
              top: 40,
              left: 20,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.arrow_back_ios),
                  AppIcon(icon: Icons.shopping_cart_checkout_outlined),
                ],
              )),
          Positioned(
            top: 400,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20)),
                color: Colors.red,
              ),
              child: Column(
                children: [
                  AppColumn(
                    texte: "Star du ",
                  ),
                  BigText(text: "Introduction"),
                  Expanded(
                      child: SingleChildScrollView(
                    child: ExpandableTextWidget(
                        text:
                            "Analyse de l’existant :•	Le langage de programmation utilisée actuellement•	La version du langage•	L’hébergement utilisé•	Les statistiques actuelles (trafic mensuel, taux de rebond, taux de conversion)•Le nombre de pages•	Le type de site (entreprise, e-commerce, plateforme, etc…)•	Les moyens de paiement utilisé•	Les plugins utilisés•	Les documents concernant la charte graphique existante•	Le nombre de personnes engagées sur ce projet ?A. 1. LES OBJECTIFS DU SITE :Détaillez, le ou les objectifs attendus avec ce projet de site internet. Vous pouvez découper vos objectifs en 2 parties : quantitatifs et qualitatifs.Exemple : Améliorer le taux de conversion actuel, présenter notre entreprise, améliorer la visibilité du site existant, etc"),
                  ))
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 120,
        padding: EdgeInsets.only(top: 30, bottom: 30, left: 20, right: 20),
        decoration: BoxDecoration(
            color: Colors.white60,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20 * 2),
                topRight: Radius.circular(20 * 2))),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
              decoration: BoxDecoration(
                color: Colors.white60,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Icon(Icons.remove, color: Colors.blue),
                  BigText(text: "0"),
                  Icon(Icons.add, color: Colors.blue)
                ],
              )),
          Container(
            child: BigText(
              text: "\$10 | Add to cart",
              color: Colors.white,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.mainColor,
            ),
          )
        ]),
      ),
    );
  }
}
