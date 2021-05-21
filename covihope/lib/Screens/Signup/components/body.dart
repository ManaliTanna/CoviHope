import 'package:covihope/Screens/DoctorHome/doctor_home_screen.dart';
import 'package:covihope/Screens/UserHome/user_home_screen.dart';
import 'package:covihope/constants.dart';
import 'package:flutter/material.dart';
import 'package:covihope/Screens/Login/login_screen.dart';
import 'package:covihope/Screens/Signup/components/background.dart';
import 'package:covihope/Screens/Signup/components/or_divider.dart';
import 'package:covihope/Screens/Signup/components/social_icon.dart';
import 'package:covihope/components/already_have_an_account_acheck.dart';
import 'package:covihope/components/rounded_button.dart';
import 'package:covihope/components/rounded_input_field.dart';
import 'package:covihope/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    dynamic doctorvalue;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.05),
            Text(
              "SIGNUP",
              style:
                  TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Name",
              onChanged: (name) {
                print('Name is: $name');
              },
            ),
            RoundedInputField(
              hintText: "Contact",
              onChanged: (contact) {
                print('contact is: $contact');
              },
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (email) {
                print('Email Id is: $email');
              },
            ),
            RoundedPasswordField(
              onChanged: (password) {
                print('Password is: $password');
              },
            ),
            SizedBox(height: 20),
            ToggleSwitch(
              minWidth: 150.0,
              minHeight: 50.0,
              cornerRadius: 20.0,
              activeBgColor: kPrimaryColor,
              activeFgColor: Colors.white,
              inactiveBgColor: kPrimaryLightColor,
              inactiveFgColor: Colors.white,
              labels: ['DOCTOR', 'COMMUNITY'],
              icons: [
                FontAwesomeIcons.handHoldingMedical,
                FontAwesomeIcons.user
              ],
              onToggle: (index) {
                print('switched to: $index');
                doctorvalue = index;
              },
            ),
            SizedBox(height: 20),
            RoundedButton(
              text: "SIGNUP",
              press: () {
                if (doctorvalue == 0) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return DoctorHomeScreen(); //Add the next screen here
                      },
                    ),
                  );
                } else if (doctorvalue == 1) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return UserHomeScreen(); //Add the next screen here
                      },
                    ),
                  );
                }
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
