import 'package:flutter/material.dart';

class News extends StatelessWidget {
  final String imageData;
  final String type;
  final String title;
  final String date;
  final String text;
  final TextStyle textStyle = TextStyle(
    fontFamily: "SF-Pro-Display",
    fontSize: 12,
    fontWeight: FontWeight.w200,
    color: Colors.grey[800],
  );

  News(
      {this.imageData = "",
      this.type = "",
      this.title = "",
      this.date = "",
      this.text = ""});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: 500,
          height: 700,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: ListView(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  // Gambar
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // container = gambar
                      Container(
                        width: 700,
                        height: 250,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(imageData),
                                fit: BoxFit.cover)),
                      ),
                      // TITLE
                      Container(
                        margin: EdgeInsets.only(left: 5, right: 5),
                        child: Text(
                          title,
                          style: textStyle.copyWith(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      // TYPE
                      Container(
                        margin: EdgeInsets.all(5),
                        child: Text(
                          type,
                          style: textStyle,
                        ),
                      ),
                      // DATE
                      Container(
                        margin: EdgeInsets.all(5),
                        child: Text(
                          date,
                          style: textStyle,
                        ),
                      ),
                      // TEXT
                      Container(
                        margin: EdgeInsets.all(5),
                        child: Text(
                          text,
                          style: textStyle.copyWith(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
