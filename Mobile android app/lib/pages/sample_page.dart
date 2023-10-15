import 'package:ajriq_app/api/api.dart';
import 'package:ajriq_app/bottomPages/home.dart';
import 'package:ajriq_app/bottomPages/search.dart';
import 'package:ajriq_app/bottomPages/users.dart';
import 'package:ajriq_app/pages/sign_in.dart';
import 'package:ajriq_app/pages/sign_in_phone.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:heroicons/heroicons.dart';
import '../bottomPages/global.dart';
import '../companents/getController.dart';

class SamplePage extends StatelessWidget {
  SamplePage({super.key});

  final GetController _getController = Get.put(GetController());

  static final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    SearchPage(),
    GlobalClass(),
    UsersPage()
  ];

  void _onItemTapped(int index) {
    _getController.enters.value = 0;
    _getController.index.value = index;
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(h * 0.07),
        //loga and text in appbar notification button
        child: Obx(() => _getController.isLogin.value
            ? AppBar(
                backgroundColor: const Color(0xFFEEEEEE),
                elevation: 0,
                leading: Padding(
                  padding: EdgeInsets.only(left: w * 0.05),
                  child: SvgPicture.asset(
                    'assets/svgImages/logo.svg',
                  ),
                ),
                title: SizedBox(
                  child: SvgPicture.asset(
                    'assets/svgImages/ajriq_text.svg',
                    width: w * 0.01,
                    height: h * 0.02,
                  ),
                ),
                actions: [
                  Padding(
                    padding: EdgeInsets.only(right: w * 0.05),
                    child: IconButton(
                      onPressed: () {},
                      highlightColor: const Color.fromRGBO(14, 119, 11, 1).withOpacity(0.2),
                      icon: HeroIcon(
                        HeroIcons.bell,
                        color: Colors.black,
                        size: w * 0.06,
                      ),
                    ),
                  ),
                ],
              )
            : AppBar(
                backgroundColor: const Color(0xFFEEEEEE),
                elevation: 0,
                actions: [
                  SizedBox(width: w * 0.05),
                  Text(
                    'Hello Guest',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: w * 0.04,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                  Padding(
                    padding: EdgeInsets.only(right: w * 0.05),
                    child: SizedBox(
                      height: h * 0.04,
                      child: ElevatedButton(
                        onPressed: () {
                          print('Sign in');
                          _getController.changeIsLogin();
                          //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignInPhone()));
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: const Color.fromRGBO(14, 119, 11, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: w * 0.03,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ),
                ],
              )),
      ),
      body: Obx(
        () => _widgetOptions.elementAt(_getController.index.value),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          showSelectedLabels: false,
          selectedFontSize: 0,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: HeroIcon(
                HeroIcons.home,
                color: Colors.black,
                size: 25,
              ),
              label: 'Home',
              activeIcon: HeroIcon(
                HeroIcons.home,
                //0E770B
                color: Color.fromRGBO(14, 119, 11, 1),
              ),
            ),
            BottomNavigationBarItem(
              icon: HeroIcon(
                HeroIcons.magnifyingGlass,
                color: Colors.black,
                size: 25,
              ),
              label: 'Search',
              activeIcon: HeroIcon(
                HeroIcons.magnifyingGlass,
                color: Color.fromRGBO(14, 119, 11, 1),
              ),
            ),
            BottomNavigationBarItem(
              icon: HeroIcon(
                HeroIcons.globeAsiaAustralia,
                color: Colors.black,
                size: 25,
              ),
              label: 'History',
              activeIcon: HeroIcon(
                HeroIcons.globeAsiaAustralia,
                color: Color.fromRGBO(14, 119, 11, 1),
              ),
            ),
            BottomNavigationBarItem(
              icon: HeroIcon(
                HeroIcons.user,
                color: Colors.black,
                size: 25,
              ),
              label: 'Profile',
              activeIcon: HeroIcon(
                HeroIcons.user,
                color: Color.fromRGBO(14, 119, 11, 1),
              ),
            ),
          ],
          currentIndex: _getController.index.value,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
