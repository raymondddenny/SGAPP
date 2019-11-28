import 'package:flutter/material.dart';

class Regisinfo extends StatelessWidget {
  final String imageData;
  final String title;
  final String place;
  final String schedule;
  final String date;
  final String registration;
  final String regisdate;
  final TextStyle textStyle = TextStyle(
    fontFamily: "SF-Pro-Display",
    fontSize: 12,
    fontWeight: FontWeight.w200,
    color: Colors.grey[800],
  );

  Regisinfo({
    this.imageData = "",
    this.title = "",
    this.place = "",
    this.schedule = "",
    this.date = "",
    this.registration = "",
    this.regisdate = "",
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 85, 0, 0),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Icon(
            Icons.event_note,
            size: 150,
            color: Colors.green[300],
          ),
          Container(
            child: Column(
              children: <Widget>[
                Text(
                  "There's no upcoming",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                Text(
                  "classes/events",
                  style: TextStyle(
                      color: Colors.green[300],
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                Text(
                  "at the moment.",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Text(
                    "Please check back at a later date",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w300,
                        fontSize: 25),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
