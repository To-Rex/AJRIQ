



import 'package:flutter/material.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key});


  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Batafsil',
          style: TextStyle(color: Colors.black, fontSize: w * 0.05),),
      ),
      body: Column(
        children: [
          Container(
            height: h * 0.3,
            width: w,
            decoration: const BoxDecoration(
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
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae nisl eget nunc aliquam aliquet. Sed vitae nisl eget nunc aliquam aliquet.',
              style: TextStyle(
                fontSize: w * 0.04,
                color: Colors.black54,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: w * 0.9,
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae nisl eget nunc aliquam aliquet. Sed vitae nisl eget nunc aliquam aliquet.',
              style: TextStyle(
                fontSize: w * 0.04,
                color: Colors.black54,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: w * 0.9,
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae nisl eget nunc aliquam aliquet. Sed vitae nisl eget nunc aliquam aliquet.',
              style: TextStyle(
                fontSize: w * 0.04,
                color: Colors.black54,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: w * 0.9,
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae nisl eget nunc aliquam aliquet. Sed vitae nisl eget nunc aliquam aliquet.',
              style: TextStyle(
                fontSize: w * 0.04,
                color: Colors.black54,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),

    );
  }
}