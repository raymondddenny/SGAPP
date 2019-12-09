import 'package:flutter/material.dart';

class Infocard1 extends StatelessWidget {
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

  Infocard1({
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
    return Stack(
      children: <Widget>[
        Container(
          width: 550,
          height: 320,
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 6,
                // offset itu titik jatoh bayangan
                offset: Offset(1, 1))
          ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // Gambar
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // gambar
                  Container(
                    width: 550,
                    height: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(imageData), fit: BoxFit.cover)),
                  ),
                  // Title
                  Container(
                    margin: EdgeInsets.only(left: 5, right: 5),
                    child: Text(
                      title,
                      style: textStyle.copyWith(
                          fontSize: 24,
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  // Venue
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Text(
                      place,
                      style: textStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey[500]),
                    ),
                  ),
                  // Schedule
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Text(
                      schedule,
                      style: textStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[500]),
                    ),
                  ),
                  // date
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Text(
                      date,
                      style: textStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  // registration
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Text(
                      registration,
                      style: textStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey),
                    ),
                  ),
                  // regisDate
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Text(
                      regisdate,
                      style: textStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
