import 'package:flutter/material.dart';
import 'package:sg_app_new/card/card.dart';
import 'package:sg_app_new/card/card1.dart';
import 'package:flutter_youtube/flutter_youtube.dart';
import 'package:sg_app_new/card/registInfo.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.home),
                  text: "NEWS",
                ),
                Tab(
                  icon: Icon(Icons.access_time),
                  text: "EVENTS",
                ),
                Tab(
                  icon: Icon(Icons.email),
                  text: "REGISTER",
                ),
                Tab(
                  icon: Icon(Icons.add_shopping_cart),
                  text: "DISCOVER",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              // TAB NEWS
              Container(
                  margin: EdgeInsets.all(20),
                  child: ListView(
                    children: <Widget>[
                      Container(
                        child: Center(
                          child: Infocard(
                            imageData:
                                "https://images.unsplash.com/photo-1515162305285-0293e4767cc2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1051&q=80",
                            type: "weekly activities",
                            title: "Student Fellowship",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Center(
                          child: Infocard(
                            imageData:
                                "https://images.unsplash.com/photo-1507692049790-de58290a4334?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
                            type: "News & Highlight",
                            title: "Video Youth Camp 2019",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Center(
                          child: Infocard(
                            imageData:
                                "https://images.unsplash.com/photo-1554220210-a273a188692a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=385&q=80",
                            type: "weekly activities",
                            title: "Media Training",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Center(
                          child: Infocard(
                            imageData:
                                "https://images.unsplash.com/photo-1495552665515-46e119a10545?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
                            type: "weekly activities",
                            title: "Prayer Meetings",
                          ),
                        ),
                      ),
                    ],
                  )),
              // TABS EVENTS
              Container(
                  child: ListView(
                children: <Widget>[
                  Container(
                    child: Infocard1(
                      imageData:
                          "https://images.unsplash.com/photo-1563029960-6d171aa2e883?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
                      title: "Spiritual Growth Discipleship Camp",
                      place: "Universitas Pelita Harapan",
                      schedule: "Schedule",
                      date: "12-15 Dec 2019",
                      registration: "Registration Period",
                      regisdate: "1-10 Dec 2019",
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    child: Infocard1(
                      imageData:
                          "https://images.unsplash.com/photo-1563902341721-029085ad9347?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
                      title: "Youth Camp UPH 2020",
                      place: "Wisma Kinasih, Bogor",
                      schedule: "Schedule",
                      date: "10-13 Jan 2020",
                      registration: "Registration Period",
                      regisdate: "1-30 Dec 2019",
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Infocard1(
                      imageData:
                          "https://images.unsplash.com/photo-1511895654441-f6a0e1db5cbd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
                      title: "Christmas UPH",
                      place: "Universitas Pelita Harapan",
                      schedule: "Schedule",
                      date: "20 Dec 2019",
                      registration: "Registration Period",
                      regisdate: "18 Dec 2019",
                    ),
                  ),
                ],
              )),
              // TAB REGISTER
              Container(
                child: ListView(
                  children: <Widget>[
                    Container(
                      child: RegistInfo(),
                    )
                  ],
                ),
              ),
              // TAB DISCOVER
              Center(
                child: Text("TAB 4"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
