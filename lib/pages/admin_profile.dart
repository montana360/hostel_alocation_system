import 'package:flutter/material.dart';

class adminProfile extends StatefulWidget {
  adminProfile({Key key}) : super(key: key);

  @override
  _adminProfileState createState() => _adminProfileState();
}

class _adminProfileState extends State<adminProfile> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(title: Text('Admin Profile')),
      body: Center(
        child: Text("Admin Profile", style: TextStyle(fontSize: 40)),
      ),
    );
  }
}