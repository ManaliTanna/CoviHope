import 'package:covihope/constants.dart';
import 'package:flutter/material.dart';
import 'package:covihope/constants.dart';
// ignore: unused_import
import 'package:covihope/Screens/forums/components/body.dart';

class Appointments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryLightColor,
        leading: Image.asset(
            'assets/images/logo.png'), // you can put Icon as well, it accepts any widget.
        title: Text(
          "Appointments",
          style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
        ),
        actions: [
          Icon(Icons.menu, color: Colors.black),
          Icon(Icons.search, color: Colors.black),
        ],
      ),
      body: Body(),
    );
  }
}