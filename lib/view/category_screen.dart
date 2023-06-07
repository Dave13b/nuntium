import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 70,30, 70),
            child: Container(
              alignment: Alignment.center,
              child: Text('🏈   Sports'),
              color: Colors.grey[200],
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(30, 70, 30, 70),
            child: Container(
              alignment: Alignment.center,
              child: Text('⚖️   Politics'),
              color: Colors.grey[200],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 70, 30, 70),
            child: Container(
              alignment: Alignment.center,
              child: Text('🌞   Life'),
              color: Colors.grey[200],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 70, 30, 70),
            child: Container(
              alignment: Alignment.center,
              child: Text('🎮   Gaming'),
              color: Colors.grey[200],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 70, 30, 70),
            child: Container(
              alignment: Alignment.center,
              child: Text('🐻   Animals'),
              color: Colors.grey[200],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 70, 30, 70),
            child: Container(
              alignment: Alignment.center,
              child: Text('🌴   Nature'),
              color: Colors.grey[200],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 70, 30, 70),
            child: Container(
              alignment: Alignment.center,
              child: Text('🍔   Food'),
              color: Colors.grey[200],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 70, 30, 70),
            child: Container(
              alignment: Alignment.center,
              child: Text('🎨   Art'),
              color: Colors.grey[200],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 70, 30, 70),
            child: Container(
              alignment: Alignment.center,
              child: Text('📜   History'),
              color: Colors.grey[200],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 70, 30, 70),
            child: Container(
              alignment: Alignment.center,
              child: Text('👗   Fashion'),
              color: Colors.grey[200],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 70, 30, 70),
            child: Container(
              alignment: Alignment.center,
              child: Text('😷   Covid-19'),
              color: Colors.grey[200],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 70, 30, 70),
            child: Container(
              alignment: Alignment.center,
              child: Text('⚔️   Middle East'),
              color: Colors.grey[200],
            ),
          ),


        ],
      ),
    );
  }
}
