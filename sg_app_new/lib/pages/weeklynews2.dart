import 'package:flutter/material.dart';
import 'package:sg/card/news.dart';

class WeeklyNews2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NEWS"),
      ),
      body: Container(
        child: News(
          imageData:
              "https://images.unsplash.com/photo-1554220210-a273a188692a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=385&q=80",
          type: "Weekly Activities",
          title: "Media Training",
          date: "5 Dec 2019, 12:00PM",
          text:
              ''' Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.''',
        ),
      ),
    );
  }
}
