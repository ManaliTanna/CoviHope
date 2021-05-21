import 'package:covihope/Screens/DoctorHome/doctor_home_screen.dart';
import 'package:covihope/Screens/UserHome/user_home_screen.dart';
import 'package:covihope/constants.dart';
import 'package:flutter/material.dart';
import 'package:covihope/Screens/Login/components/background.dart';
import 'package:covihope/Screens/Signup/signup_screen.dart';
import 'package:covihope/components/already_have_an_account_acheck.dart';
import 'package:covihope/components/rounded_button.dart';
import 'package:covihope/components/rounded_input_field.dart';
import 'package:covihope/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    dynamic doctorvalue;
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style:
                  TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (email) {
                print('Email is : $email');
                doctorvalue = email;
              },
            ),
            RoundedPasswordField(
              onChanged: (password) {
                print('Email is : $password');
              },
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                if (doctorvalue == "doctor@gmail.com") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return DoctorHomeScreen(); //Add the next screen here
                      },
                    ),
                  );
                } else {
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
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
