import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                  child: ReusableCard(colour: Color(0xFF1D1F33)),
                ),
                Expanded(
                  child: ReusableCard(colour: Color(0xFF1D1F33)),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(colour: Color(0xFF1D1F33)),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(colour: Color(0xFF1D1F33)),
                ),
                Expanded(
                  child: ReusableCard(colour: Color(0xFF1D1F33)),
                ),
              ],
            ),
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

class ReusableCard extends StatelessWidget {
  Color colour;
  ReusableCard({@required this.colour});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
