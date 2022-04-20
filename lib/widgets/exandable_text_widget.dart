import 'package:flutter/material.dart';
import 'package:projet1/utils/colors.dart';
import 'package:projet1/widgets/small_text.dart';

import 'big_text.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;
  const ExpandableTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  _ExpandableTextWidgetState createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String firstHalf;
  late String secondHalf;
  bool hiddenText = true;
  double textHeight = 500;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty
          ? Text(firstHalf, style: TextStyle(color: Colors.white))
          : Column(
              children: [
                SmallText(
                    heignt: 1.8,
                    color: Colors.white,
                    size: 14,
                    text: hiddenText
                        ? (firstHalf + "...")
                        : (firstHalf + secondHalf)),
                InkWell(
                    onTap: () {
                      setState(() {
                        hiddenText = !hiddenText;
                      });
                    },
                    child: Container(
                      color: Colors.red,
                      height: 50,
                      margin: const EdgeInsets.only(left: 100.0, right: 100.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment
                              .center, //Center Row contents horizontally,
                          crossAxisAlignment: CrossAxisAlignment
                              .center, //Center Row contents vertically,

                          children: [
                            BigText(
                              text: "Voir Plus",
                              color: Colors.white,
                              size: 30,
                            ),
                            Icon(
                              hiddenText
                                  ? Icons.arrow_drop_down
                                  : Icons.arrow_drop_up,
                              color: Colors.white,
                              size: 30,
                            ),
                          ]),
                    ))
              ],
            ),
    );
  }
}
