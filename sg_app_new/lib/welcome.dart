import 'package:flutter/material.dart';
import 'package:sg_app_new/auth/login_page.dart';
import 'package:sg_app_new/pages/home.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: 580,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/Background.png"),
                    fit: BoxFit.cover)),
          ),
          Stack(children: <Widget>[
            Positioned(
              left: 20,
              top: 50,
              child: Text(
                "Welcome to SGS UPH!",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontFamily: "SF-Pro-Display",
                    fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              left: 25,
              top: 100,
              child: Text(
                "Nice to see you again!",
                style: TextStyle(
                    color: Colors.white54,
                    fontSize: 20,
                    fontFamily: "SF-Pro-Display",
                    fontWeight: FontWeight.w300),
              ),
            ),
            Positioned(
              top: 130,
              left: 25,
              width: 175,
              child: RaisedButton(
                elevation: 5,
                onPressed: () {
                  Navigator.push(
                    context,
                    // MaterialPageRoute(builder: (context) => LoginPage()),
                    MaterialPageRoute(builder: (context) => SGHOME()),
                  );
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: "SF-Pro-Display",
                      fontWeight: FontWeight.w400),
                ),
                color: Colors.orange,
              ),
            ),
            Positioned(
                bottom: 20,
                left: 25,
                child: Text(
                  "You're not a member?",
                  style: TextStyle(
                      fontFamily: "SF-Pro-Display",
                      fontWeight: FontWeight.w300,
                      fontSize: 20),
                )),
            Positioned(
              bottom: 7,
              left: 190,
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  "Register.",
                  style: TextStyle(
                      fontFamily: "SF-Pro-Display",
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: Colors.red),
                ),
              ),
            )
          ])
        ],
      ),
    );
  }
}
