import 'package:flutter/material.dart';
import 'add_hostel.dart';
import 'admin_profile.dart';
import 'admin_rooms.dart';
import 'admin_student_rooom.dart';
import 'adminhome.dart';

class adminHome extends StatefulWidget {
  @override
  _adminHomeState createState() => _adminHomeState();
}

class _adminHomeState extends State<adminHome> {
  int currentTab = 0;
  final List<Widget> screens = [
    hostelList(),
    roomList(),
    addHostel(),
    studentRoom(),
    adminProfile()
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = hostelList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
                      currentScreen = addHostel();
                      currentTab = 4;
                    });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget> [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = adminHome();
                      currentTab = 0;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.dashboard,
                        color: currentTab == 0 ? Colors.green : Colors.grey,
                        ),
                        Text(
                          'Hostels',
                          style: TextStyle(color: currentTab == 0 ? Colors.green : Colors.grey
                          ),
                        )
                    ],
                  ),
                  ),

                  MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = roomList();
                      currentTab = 1;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home_filled,
                        color: currentTab == 1 ? Colors.green : Colors.grey,
                        ),
                        Text(
                          'Rooms',
                          style: TextStyle(color: currentTab == 1 ? Colors.green : Colors.grey
                          ),
                        )
                    ],
                  ),
                  )
                ]
              ) ,  
              // right tabs
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = studentRoom();
                      currentTab = 2;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.room,
                        color: currentTab == 2 ? Colors.green : Colors.grey,
                        ),
                        Text(
                          'Occupied',
                          style: TextStyle(color: currentTab == 2 ? Colors.green : Colors.grey
                          ),
                        )
                    ],
                  ),
                  ),

                  MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = adminProfile();
                      currentTab = 3;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person,
                        color: currentTab == 3 ? Colors.green : Colors.grey,
                        ),
                        Text(
                          'Profile',
                          style: TextStyle(color: currentTab == 3 ? Colors.green : Colors.grey
                          ),
                        )
                    ],
                  ),
                  )
                ]
              )   
            ],
          ),
        ),
      ),
    );
  }
}
