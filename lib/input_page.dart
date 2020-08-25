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
  Color malecardcolor = inactivecardcolour;
  Color femalecardcolor = inactivecardcolour;
  void updatecolor(Gender gender) {
    if (gender == Gender.male) {
      if (malecardcolor == inactivecardcolour) {
        malecardcolor = activecardcolour;
        femalecardcolor = inactivecardcolour;
      } else
        malecardcolor = inactivecardcolour;
    } else {
      if (femalecardcolor == inactivecardcolour) {
        femalecardcolor = activecardcolour;
        malecardcolor = inactivecardcolour;
      } else
        femalecardcolor = inactivecardcolour;
    }
  }

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
                        updatecolor(Gender.male);
                      });
                    },
                    child: ReusableCard(
                      colour: malecardcolor,
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
                        updatecolor(Gender.female);
                      });
                    },
                    child: ReusableCard(
                      colour: femalecardcolor,
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
