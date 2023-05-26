import 'package:flutter/material.dart';

class CategoriesScreen extends StatefulWidget {
  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  List<Category> categories = [
    Category(
      name: '🏈   Sports', imageUrl: '',
    ),
    Category(
      name: '⚖️   Politics',
      imageUrl: '',
    ),
    Category(
      name: '🌞   Life',
      imageUrl: '',
    ),
    Category(
      name: '🐻   Animals',
      imageUrl: '',
    ),
    Category(
      name: '🌴   Nature',
      imageUrl: '',
    ),

    Category(
      name: '🍔   Food',
      imageUrl: '',
    ),
    Category(
      name: '🎨   Art',
      imageUrl: '',
    ),
    Category(
      name: '📜   History',
      imageUrl: '',
    ),
    Category(
      name: '👗   Fashion',
      imageUrl: '',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(categories[index].imageUrl),
            title: Text(categories[index].name),
            onTap: () {
              Navigator.pushNamed(context, '/category/${categories[index].name}');
            },
          );
        },
      ),
    );
  }
}

class Category {
  final String name;
  final String imageUrl;

  Category({required this.name, required this.imageUrl});
}
