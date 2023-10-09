import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pick your category"),
      ),
      body: GridView(
        // using grid view
        //A delegate that controls the layout of the children within the [GridView].
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // two column
          childAspectRatio: 3 / 2, // size of column
          crossAxisSpacing: 20, // space between column
          mainAxisSpacing: 20, // space between horizontal items and vertical
        ),
        children: const [
          Text('1', style: TextStyle(color: Colors.amber)),
          Text('2', style: TextStyle(color: Colors.amber)),
          Text('3', style: TextStyle(color: Colors.amber)),
          Text('4', style: TextStyle(color: Colors.amber)),
          Text('5', style: TextStyle(color: Colors.amber)),
          Text('6', style: TextStyle(color: Colors.amber)),
        ],
      ),
    );
  }
}
