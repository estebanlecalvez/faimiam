import 'package:flutter/material.dart';

class ChooseUser extends StatefulWidget {
  @override
  _ChooseUserState createState() => _ChooseUserState();
}

class _ChooseUserState extends State<ChooseUser> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 40.0),
            Column(
              children: <Widget>[
                Image.asset('assets/logo.png'),
                SizedBox(height: 16.0),
                Text('Mangez simplement.'),
              ],
            ),
            SizedBox(height: 50.0),
            // TODO: Wrap Username with AccentColorOverride (103)
            // TODO: Remove filled: true values (103)
            // TODO: Wrap Password with AccentColorOverride (103)
            // [Name]
            SizedBox(height: 50.0),
            RaisedButton(
              shape: Border.all(color: Colors.blue),
              color:Color(0xff8a2c84),
              textColor: Colors.white,
              child: Text('Cooker'),
              onPressed: () {
                Navigator.pop(context,"/login_cooker");
              },
            ),
            // TODO: Add an elevation to NEXT (103)
            // TODO: Add a beveled rectangular border to NEXT (103)
            RaisedButton(
              shape: Border.all(color: Colors.blue),
              color:Color(0xffe53764),
              textColor: Colors.white,
              child: Text('User'),
              onPressed: () {
                Navigator.pop(context,"login_user");
              },
            ),
          ],
        ),
      ),
    );
  }
}

