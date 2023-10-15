

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFFEEEEEE),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/svgImages/logo.svg',
              width: 100,
              height: 100,
            ),
            SizedBox(height: h * 0.05),
            SvgPicture.asset(
              'assets/svgImages/ajriq_text.svg',
              width: w * 0.5,
              height: h * 0.05,
            ),
          ],
        )
      ),
    );
  }
}