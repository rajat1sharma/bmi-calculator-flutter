import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'cardcontent.dart';
import 'reusablecard.dart';

const bottombarheight = 80.0;
const activecardcolour = Color(0xFF1D1F33);
const inactivecardcolour = Color(0xFF111328);
const bottomcontainercolour = Color(0xFFEA1556);
enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedgender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedgender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                      colour: selectedgender == Gender.male
                          ? activecardcolour
                          : inactivecardcolour,
                      cardChild: Cardcontents(
                        typeoficon: FontAwesomeIcons.mars,
                        cardtext: "MALE",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedgender = Gender.female;
                      });
                    },
                    child: ReusableCard(
                      colour: selectedgender == Gender.female
                          ? activecardcolour
                          : inactivecardcolour,
                      cardChild: Cardcontents(
                        typeoficon: FontAwesomeIcons.venus,
                        cardtext: "FEMALE",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(colour: activecardcolour),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(colour: activecardcolour),
                ),
                Expanded(
                  child: ReusableCard(colour: activecardcolour),
                ),
              ],
            ),
          ),
          Container(
            color: bottomcontainercolour,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottombarheight,
          ),
        ],
      ),

//      floatingActionButton: Theme(
//        data: ThemeData(accentColor: Colors.red),
//        child: FloatingActionButton(
//          child: Icon(Icons.add),
//        ),
//      ),
    );
  }
}
