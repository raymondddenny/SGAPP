import 'package:flutter/material.dart';
import 'package:sg/pages/mail.dart';

class Prayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prayer Page'),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1554566205-d2a9e64cc5e9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=60"),
                    fit: BoxFit.fill)),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                      height: 100,
                      child: Center(
                        child: Text(
                          '"In my distress I called to the Lord; I cried to my God for help. From his temple he heard my voice; my cry came before him, into his ears."',
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      )),
                  Container(
                      height: 60,
                      child: Text(
                        'Psalms 18:6 ',
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                  ButtonTheme(
                    minWidth: 300,
                    height: 50,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return email();
                        }));
                      },
                      child: Text(
                        'Prayer Request',
                        style: TextStyle(color: Colors.white, fontSize: 19),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
