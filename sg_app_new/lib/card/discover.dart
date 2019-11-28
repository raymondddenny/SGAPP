import 'package:flutter/material.dart';

class Discover extends StatelessWidget {
  final String imageData;
  final String title;

  Discover({this.imageData = "", this.title});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Community",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 250,
                  child: Card(
                    elevation: 5,
                    child: Wrap(
                      children: <Widget>[
                        Image.asset('assets/images/gambar4.png'),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Youth Camp",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 250,
                  child: Card(
                    elevation: 5,
                    child: Wrap(
                      children: <Widget>[
                        Image.asset('assets/images/gambar4.png'),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Discipleship",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          // COLUMN 2
          Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Next Step",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 250,
                  child: Card(
                    elevation: 5,
                    child: Wrap(
                      children: <Widget>[
                        Image.asset(
                          'assets/images/gambar1.png',
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 100,
                            child: Text(
                              "Youth Camp",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 250,
                  child: Card(
                    elevation: 5,
                    child: Wrap(
                      children: <Widget>[
                        Image.asset(
                          'assets/images/gambar2.png',
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          'assets/images/gambar3.png',
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Friendship",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
