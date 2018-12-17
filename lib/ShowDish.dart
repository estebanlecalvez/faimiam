import 'package:flutter/material.dart';

class ShowDish extends StatefulWidget {
    @override
  _ShowDishState createState() => _ShowDishState();
}

class _ShowDishState extends State<ShowDish> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("Welcome to dish information page"),
      ),
    );
  }
}
