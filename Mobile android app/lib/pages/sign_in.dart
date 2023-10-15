import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: const Color(0xFFEEEEEE),
        appBar: AppBar(
          backgroundColor: const Color(0xFFEEEEEE),
          elevation: 0,
          centerTitle: true,
          title: SvgPicture.asset(
            'assets/svgImages/logo.svg',
            width: w * 0.3,
            height: h * 0.05,
          ),
        ),
        body: Column(
          children: [
            //text Save time and money with us
            Padding(
              padding: EdgeInsets.only(
                  top: h * 0.13, left: w * 0.05, right: w * 0.15),
              child: const Text(
                'Save time and money with us. witness it yourself.',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            //google and apple sign in buttons
            Container(
              width: w * 0.9,
              height: h * 0.06,
              margin: EdgeInsets.only(top: h * 0.2),
              padding: EdgeInsets.only(left: w * 0.05, right: w * 0.05),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(image: AssetImage('assets/images/google.png')),
                  SizedBox(width: w * 0.05),
                  const Text(
                    'Sign in with Google',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: w * 0.9,
              height: h * 0.06,
              margin: EdgeInsets.only(top: h * 0.03),
              padding: EdgeInsets.only(left: w * 0.05, right: w * 0.05),
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(image: AssetImage('assets/images/apple.png')),
                  SizedBox(width: w * 0.05),
                  const Text(
                    'Sign in with Apple',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            //line or line
            Padding(
              padding: EdgeInsets.only(top: h * 0.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: w * 0.4,
                    height: 1,
                    color: Colors.black,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: w * 0.05, right: w * 0.05),
                    child: const Text(
                      'or',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    width: w * 0.4,
                    height: 1,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            //create account button
            Container(
              width: w * 0.9,
              height: h * 0.06,
              margin: EdgeInsets.only(top: h * 0.03),
              padding: EdgeInsets.only(left: w * 0.05, right: w * 0.05),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Create an account',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            //Text By signing up you agree to our
            Padding(
              padding: EdgeInsets.only(top: h * 0.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'By signing up you agree to our ',
                    style: TextStyle(
                      fontSize: w * 0.03,
                    ),
                  ),
                  Text(
                    'Terms of Use',
                    style: TextStyle(
                      fontSize: w * 0.03,
                      color: Colors.blue,
                    ),
                  ),
                   Text(
                    ' and ',
                    style: TextStyle(
                      fontSize: w * 0.03,
                    ),
                  ),
                  Text(
                    'Privacy Policy',
                    style: TextStyle(
                      fontSize: w * 0.03,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            //Text Already have an account? Sign in
            const Expanded(child: SizedBox()),
            Padding(
              padding: EdgeInsets.only(top: h * 0.05, bottom: h * 0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account? ',
                    style: TextStyle(
                      fontSize: w * 0.03,
                    ),
                  ),
                  Text(
                    'Sign in',
                    style: TextStyle(
                      fontSize: w * 0.03,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
