import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'widgets/reusable_card.dart';
import 'widgets/icon_content.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI Calculator"),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: ReusableCard(
                    color: activeCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      iconText: "MALE",
                    ),
                  )),
                  Expanded(
                      child: ReusableCard(
                    color: activeCardColor,
                    cardChild: IconContent(
                        icon: FontAwesomeIcons.venus, iconText: "FEMALE"),
                  )),
                ],
              ),
            ),
            Expanded(child: ReusableCard(color: activeCardColor)),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(child: ReusableCard(color: activeCardColor)),
                  Expanded(child: ReusableCard(color: activeCardColor)),
                ],
              ),
            ),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}
