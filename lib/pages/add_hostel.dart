import 'package:flutter/material.dart';

class addHostel extends StatefulWidget {
  addHostel({Key key}) : super(key: key);

  @override
  _addHostelState createState() => _addHostelState();
}

class _addHostelState extends State<addHostel> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(title: Text('Add Hostel')),
      body: Stack(
        children: <Widget> [
          Container(
            height: 360,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50.0),
                bottomRight: Radius.circular(50.0)
              ),
              gradient: LinearGradient(
                colors: <Color> [Color(0xffee0000), Color(0xffeeee00)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
              )
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 80),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      "Adding Hostel",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontStyle: FontStyle.italic
                      ),
                    ),
                    ),
                ),
                SizedBox(height: 20.0),
                Expanded(
                  child: Stack(

                ))
              ],
            )
          )
        ],
      ),
    );
  }
}