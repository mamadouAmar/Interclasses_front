import 'dart:html';

import 'package:flutter/material.dart';
import 'package:projet1/widgets/big_text.dart';

class Inscription extends StatefulWidget {
  const Inscription({Key? key}) : super(key: key);

  @override
  _InscriptionState createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 50,
            horizontal: 50,
          ),
          child: Form(
              child: Column(
            children: [
              Center(
                child: BigText(text: "Inscription"),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          )),
        ),
      ),
    );
  }
}
