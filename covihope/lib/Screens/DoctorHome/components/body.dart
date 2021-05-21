import 'dart:async';
import 'dart:convert';
import 'package:covihope/Screens/Appointments/Appointments.dart';
import 'package:covihope/Screens/forums/forums.dart';
import 'package:flutter/material.dart';
import 'package:covihope/constants.dart';
import 'package:covihope/components/cards.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Container(
                    width: 80.0,
                    height: 80.0,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: new AssetImage('assets/images/logo.png')))),
                SizedBox(height: 36),
                new Container(
                  child: Text(
                    'What are you looking for ?',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 36),

            // Horizontal Listview

            Container(
              height: 190,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Appointments();
                          },
                        ),
                      );
                    },
                    child: Cards(
                      name: 'My Appointments',
                      icon: FontAwesomeIcons.handHoldingMedical,
                      color: kPrimaryColor,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Appointments(); //Add Emergency here
                          },
                        ),
                      );
                    },
                    child: Cards(
                      name: 'Emergency Help',
                      icon: FontAwesomeIcons.solidHospital,
                      color: kPrimaryColor,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Forums();
                          },
                        ),
                      );
                    },
                    child: Cards(
                      name: 'Forum',
                      icon: FontAwesomeIcons.envelopeOpenText,
                      color: kPrimaryColor,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Appointments(); //Add donate screen here
                          },
                        ),
                      );
                    },
                    child: Cards(
                      name: 'Donate',
                      icon: FontAwesomeIcons.handHolding,
                      color: kPrimaryColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 36),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/images/Frontline.png",
                    width: 315, height: 330, fit: BoxFit.fill),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
