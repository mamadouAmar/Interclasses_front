import 'package:flutter/material.dart';
import 'package:projet1/utils/colors.dart';
import 'package:projet1/widgets/app_icon.dart';
import 'package:projet1/widgets/big_text.dart';
import 'package:projet1/widgets/exandable_text_widget.dart';
import 'package:projet1/widgets/small_text.dart';

class StarFoot extends StatefulWidget {
  const StarFoot({Key? key}) : super(key: key);

  @override
  _StarFootState createState() => _StarFootState();
}

class _StarFootState extends State<StarFoot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              toolbarHeight: 60,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.arrow_back_ios),
                  AppIcon(
                    icon: Icons.share,
                    backgroundColor: Colors.white,
                  ),
                ],
              ),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(20),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 20, left: 20),
                      //color: Colors.white,
                      child: Center(
                          child: BigText(
                        text: "Star du Foot",
                        size: 26,
                      )),
                      width: double.maxFinite,
                      padding: EdgeInsets.only(top: 5, bottom: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        AppIcon(
                            icon: Icons.portrait,
                            size: 50,
                            iconColor: Colors.white,
                            backgroundColor: AppColors.mainColor),
                        SizedBox(
                          width: 50,
                        ),
                        Column(
                          children: [
                            BigText(text: "Sahaba Ndiaye"),
                            SmallText(text: "Jun,04 2022"),
                          ],
                        ),
                        SizedBox(
                          width: 150,
                        ),
                        AppIcon(
                            icon: Icons.favorite,
                            size: 50,
                            iconColor: Colors.white,
                            backgroundColor: AppColors.mainColor),
                        SizedBox(
                          width: 20,
                        ),
                        SmallText(text: "30"),
                        SizedBox(
                          width: 80,
                        ),
                        AppIcon(
                            icon: Icons.comment_outlined,
                            size: 50,
                            iconColor: Colors.white,
                            backgroundColor: AppColors.mainColor),
                        SizedBox(
                          width: 20,
                        ),
                        SmallText(text: "80"),
                      ],
                    )
                  ],
                ),
              ),
              pinned: true,
              backgroundColor: Colors.yellow,
              expandedHeight: 300,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/image/sadio.png",
                  width: double.maxFinite,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverToBoxAdapter(
                child: Column(
              children: [
                Container(
                  child: ExpandableTextWidget(
                      text:
                          "Analyse de l’existant :•	Le langage de programmation utilisée actuellement•	La version du langage•	L’hébergement utilisé•	Les statistiques actuelles (trafic mensuel, taux de rebond, taux de conversion)•Le nombre de pages•	Le type de site (entreprise, e-commerce, plateforme, etc…)•	Les moyens de paiement utilisé•	Les plugins utilisés•	Les documents concernant la charte graphique existante•	Le nombre de personnes engagées sur ce projet ?A. 1. LES OBJECTIFS DU SITE :Détaillez, le ou les objectifs attendus avec ce projet de site internet. Vous pouvez découper vos objectifs en 2 parties : quantitatifs et qualitatifs.Exemple : Améliorer le taux de conversion actuel, présenter notre entreprise, améliorer la visibilité du site existant, etc"),
                  margin: EdgeInsets.only(left: 20, right: 20),
                ),
              ],
            )),
          ],
        ),
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

  fromHeight(int i) {}
}
