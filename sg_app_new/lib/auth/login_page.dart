import 'package:flutter/material.dart';
import 'package:sg/pages/home.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email;
  String _password;

  String string = ""; // for title button

  Widget _buildFlatbutton(string) {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () {},
        padding: EdgeInsets.only(right: 0.0),
        child: Text(string),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        //TODO 2 : buat validasi sambungin ke database ( FIREBASE)
        // => fix button overflowed ( SingleChildScrolView)
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(10),
            child: Form(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 200,
                    height: 200,
                    child: Image(
                      image: AssetImage("assets/images/logowarna.png"),
                    ),
                  ),

                  Container(
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: "Email",
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                      validator: (value) =>
                          value.isEmpty ? 'Email can\'t be empty' : null,
                      onSaved: (value) => _email = value,
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Container(
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: "Password",
                          prefixIcon: Icon(Icons.vpn_key),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                      obscureText: true, // asterisk password
                      validator: (value) =>
                          value.isEmpty ? 'Password can\'t be empty' : null,
                      onSaved: (value) => _password = value,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 450, // make the button sama kayak size text input
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      elevation: 5,
                      child: Text("Login"),
                      textColor: Colors.white,
                      color: Colors.orange,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SGHOME()),
                        );
                      },
                    ),
                  ),
                  //TODO: Atur jaraknya lagi agak kejauhan
                  _buildFlatbutton("Forget Password?"),
                  _buildFlatbutton("Sign Up")
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
