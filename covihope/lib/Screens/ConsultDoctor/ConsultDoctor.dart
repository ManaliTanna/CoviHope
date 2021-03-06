import 'package:covihope/constants.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:covihope/Screens/ConsultDoctor/components/body.dart';

class ConsultDoctors extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryLightColor,
        leading: Image.asset(
            'assets/images/logo.png'), // you can put Icon as well, it accepts any widget.
        title: Text(
          "Consultation",
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
