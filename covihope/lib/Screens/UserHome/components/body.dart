import 'dart:async';
import 'dart:convert';
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

            // Make a horizontal Listview

            //Consult Doctor Card

            Container(
              height: 190,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      print("onTap called.");
                    },
                    child: Cards(
                      name: 'Consult\nDoctor',
                      icon: FontAwesomeIcons.heartbeat,
                      color: kPrimaryLightColor,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("onTap called");
                    },
                    child: Cards(
                      name: 'Vaccine\nDrives',
                      icon: FontAwesomeIcons.syringe,
                      color: kPrimaryLightColor,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      //
                    },
                    child: Cards(
                      name: 'Get\nHelp',
                      icon: FontAwesomeIcons.ambulance,
                      color: kPrimaryLightColor,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      //
                    },
                    child: Cards(
                      name: 'Offer\nHelp',
                      icon: FontAwesomeIcons.handHolding,
                      color: kPrimaryLightColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 36),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/images/precautions.png",
                    width: 315, height: 330, fit: BoxFit.fill),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
