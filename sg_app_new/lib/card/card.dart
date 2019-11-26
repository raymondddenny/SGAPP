import 'package:flutter/material.dart';

class Infocard extends StatelessWidget {
  final String imageData;
  final String type;
  final String title;
  final TextStyle textStyle = TextStyle(
    fontFamily: "SF-Pro-Display",
    fontSize: 12,
    fontWeight: FontWeight.w200,
    color: Colors.grey[800],
  );

  Infocard({
    this.imageData = "",
    this.type = "",
    this.title = "",
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: 350,
          height: 200,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
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
                  // container = gambar
                  Container(
                    width: 350,
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                        image: DecorationImage(
                            image: NetworkImage(imageData), fit: BoxFit.cover)),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Text(
                      type,
                      style: textStyle,
                    ),
                  ),
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
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
