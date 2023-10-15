
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: h * 0.05,
          ),
          Container(
            height: 100,
            width: w,
            margin: const EdgeInsets.all(10),
            child: const HeroIcon(
              HeroIcons.userCircle,
              color: Colors.black54,
              size: 100,
            ),
          ),
          const Text(
            'Salom, Mehmon!',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: h * 0.03,
          ),
          SizedBox(
            height: h * 0.5,
            child: ListView(
              children: [
                ListTile(
                  onTap: () {},
                  leading: const HeroIcon(
                    HeroIcons.user,
                    color: Colors.black54,
                    size: 30,
                  ),
                  title: const Text('Mening ma`lumotlarim'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  onTap: () {},
                  leading: const HeroIcon(
                    HeroIcons.globeAsiaAustralia,
                    color: Colors.black54,
                    size: 30,
                  ),
                  title: const Text('Afzal Til'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  onTap: () {},
                  leading: const HeroIcon(
                    HeroIcons.bell,
                    color: Colors.black54,
                    size: 30,
                  ),
                  title: const Text('Bildirishnomalar'),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  onTap: () {},
                  leading: const HeroIcon(
                    HeroIcons.questionMarkCircle,
                    color: Colors.black54,
                    size: 30,
                  ),
                  title: const Text('Yordam'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  onTap: () {},
                  leading: const HeroIcon(
                    HeroIcons.informationCircle,
                    color: Colors.black54,
                    size: 30,
                  ),
                  title: const Text('Dastur haqida'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  onTap: () {},
                  leading: const HeroIcon(
                    HeroIcons.arrowRightOnRectangle,
                    color: Colors.red,
                    size: 30,
                  ),
                  title: const Text('Chiqish', style: TextStyle(color: Colors.red),),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
              ],
            ),
          ),

        ],
      )
    );
  }
}