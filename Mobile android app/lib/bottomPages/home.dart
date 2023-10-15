import 'package:ajriq_app/pages/chat_page.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

import '../pages/batafsil.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Salom, Mehmon!',
          style: TextStyle(color: Colors.black, fontSize: w * 0.05),
        ),
      ),
      body: SizedBox(
        child: ListView(
          children: [
            Container(
                height: h * 0.5,
                width: w,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black12.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Container(
                      height: h * 0.3,
                      width: w,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        image: DecorationImage(
                          image: AssetImage('assets/images/img.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: w * 0.9,
                      child: Text(
                        'Doctorlar bilan onlayn suhbatlashing',
                        style: TextStyle(
                          fontSize: w * 0.04,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: w * 0.9,
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc eget augue nec massa volutpat aliquam. ',
                        style: TextStyle(
                          fontSize: w * 0.03,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: w * 0.9,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MorePage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: const Color.fromRGBO(14, 119, 11, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          'Batafsil',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: w * 0.03,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                  ],
                )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 5,
        splashColor: Colors.green,
        hoverColor: Colors.green,
        backgroundColor: Colors.grey[200],
        onPressed: () {
          //push chat page
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ChatPage()),
          );
        },
        child: HeroIcon(
          HeroIcons.chatBubbleLeftRight,
          color: Colors.green,
          size: w * 0.06,
        ),
      ),
    );
  }
}
