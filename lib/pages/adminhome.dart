import 'package:flutter/material.dart';

class hostelList extends StatefulWidget {
  hostelList({Key key}) : super(key: key);

  @override
  _hostelListState createState() => _hostelListState();
}

class _hostelListState extends State<hostelList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Available Hostel')),
      body: Center(
        child: Text("Available Hostel", style: TextStyle(fontSize: 40)),
      ),
    );
  }
}