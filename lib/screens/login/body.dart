import 'package:calculus/Components/rounded_button.dart';
import 'package:calculus/Screens/Login/login_screen.dart';
import 'package:flutter/material.dart';

import '../../components/have_account.dart';
import '../../components/text_field_conctainer.dart';
import '../../constants.dart';
import '../Signup/sign_up_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
          margin: const EdgeInsets.only(top: 30.0),
          height: size.height,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'MATHS',
                  style: TextStyle(
                      fontSize: 70,
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor),
                ),
                const SizedBox(
                  height: 25,
                ),
                Image.asset(
                  'assets/images/math.jpg',
                  height: size.height * 0.35,
                ),
                const SizedBox(
                  height: 33,
                ),
                const TextFieldContainer(
                    child: TextField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.person, color: kPrimaryColor),
                      hintText: "Your Email",
                      border: InputBorder.none),
                )),
                const TextFieldContainer(
                    child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      icon: Icon(Icons.lock, color: kPrimaryColor),
                      suffixIcon: Icon(Icons.visibility),
                      hintText: "Your Password",
                      border: InputBorder.none),
                )),
                const SizedBox(
                  height: 15,
                ),
                RoundedButton(
                  text: 'LOGIN',
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const LoginScreen();
                      }),
                    );
                  },
                  textcolor: Colors.white,
                  color: kPrimaryColor,
                ),
                const SizedBox(
                  height: 10,
                ),
                AleadyHaveAccountCheck(
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const SignUpScreen();
                        },
                      ),
                    );
                  },
                  login: true,
                )
              ],
            ),
          )),
    );
  }
}
