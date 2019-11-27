import 'package:flutter/material.dart';
import 'package:sg/card/news.dart';

class WeeklyNews3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NEWS"),
      ),
      body: Container(
        child: News(
          imageData:
              "https://images.unsplash.com/photo-1495552665515-46e119a10545?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
          type: "Weekly Activities",
          title: "Prayer Meetings",
          date: "8 Dec 2019, 12:00PM",
          text: ''' Psalm 37:7
Rest in the LORD, and wait patiently for him: fret not yourself because of him who prospers in his way, because of the man who brings wicked devices to pass.''',
        ),
      ),
    );
  }
}
