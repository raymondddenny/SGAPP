import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class email extends StatelessWidget {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _subjectController = TextEditingController();
  TextEditingController _bodyController = TextEditingController();

  _sendEmail() async {
    final String _email = 'mailto:' +
        _emailController.text +
        '?subject=' +
        _subjectController.text +
        '&body=' +
        _bodyController.text;
    try {
      await launch(_email);
    } catch (e) {
      throw 'wrong email!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Email Your Prayer Request')),
      body: Center(
          child: Column(
        children: <Widget>[
          TextField(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(hintText: "prayer@gmail.com"),
          ),
          TextField(
            controller: _subjectController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: 'Subject',
            ),
          ),
          TextField(
            controller: _bodyController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: 'Message',
            ),
          ),
          RaisedButton(
            child: Text(
              'Send Email',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.deepOrange,
            onPressed: _sendEmail,
          ),
        ],
      )),
    );
  }
}
