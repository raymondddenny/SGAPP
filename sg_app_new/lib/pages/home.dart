import 'package:flutter/material.dart';
import 'package:sg/pages/BasicPage.dart';
import 'package:sg/pages/HomePage.dart';
import 'package:sg/pages/PrayerPage.dart';
import 'package:sg/pages/ProfilePage.dart';

class SGHOME extends StatefulWidget {
  @override
  _SGHOMEState createState() => _SGHOMEState();
}

class _SGHOMEState extends State<SGHOME> {
  int _currentIndex = 0;
  Widget changePage(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return Home();
      case 1:
        return Prayer();
      case 2:
        return Profile();

        break;
      default:
        return Home();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: changePage(_currentIndex),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            selectedItemColor: Colors.deepOrange,
            onTap: (value) {
              setState(() {
                _currentIndex = value;
                setState(() {});
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text(
                    "Home",
                  )),
              BottomNavigationBarItem(
                  icon: Icon(Icons.star), title: Text("Prayer")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_pin), title: Text("Profile")),
            ],
          ),
        ),
      ),
    );
  }
}
