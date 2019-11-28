import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Profile extends StatelessWidget {
  final listView = [
    "Instagram",
    "Youtube",
    "App Info",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Page"),
      ),
      body: Container(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: listView.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: InkWell(
                onTap: () async {
                  if (listView[index] == "Instagram" &&
                      await canLaunch(
                          "https://www.instagram.com/sg_uph/?hl=id")) {
                    await launch("https://www.instagram.com/sg_uph/?hl=id");
                  } else if (listView[index] == "Youtube" &&
                      await canLaunch(
                          "https://www.youtube.com/watch?v=YoSRGf1A1QU")) {
                    await launch("https://www.youtube.com/watch?v=YoSRGf1A1QU");
                  } else if (listView[index] == "App Info") {}
                },
                child: Container(
                  height: 60,
                  child: ListTile(
                    title: Text(
                      listView[index],
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
