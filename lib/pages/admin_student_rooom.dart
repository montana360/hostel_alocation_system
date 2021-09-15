import 'package:flutter/material.dart';

class studentRoom extends StatefulWidget {
  studentRoom({Key key}) : super(key: key);

  @override
  _studentRoomState createState() => _studentRoomState();
}

class _studentRoomState extends State<studentRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Occupied Room')),
      body: Center(
        child: Text("Occupied Room", style: TextStyle(fontSize: 40)),
      ),
    );
  }
}
