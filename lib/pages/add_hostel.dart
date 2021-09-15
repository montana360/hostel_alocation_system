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
      appBar: AppBar(title: Text('New Hostel')),
      body: Center(
        child: Text("New Hostel", style: TextStyle(fontSize: 40)),
      ),
    );
  }
}