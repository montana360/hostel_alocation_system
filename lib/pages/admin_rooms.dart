import 'package:flutter/material.dart';

class roomList extends StatefulWidget {
  roomList({Key key}) : super(key: key);

  @override
  _roomListState createState() => _roomListState();
}

class _roomListState extends State<roomList> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(title: Text('Available Rooms')),
      body: Center(
        child: Text("Available Rooms", style: TextStyle(fontSize: 40)),
      ),
    );
  }
}