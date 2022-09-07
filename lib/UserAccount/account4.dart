import 'package:flutter/material.dart';

class Account4 extends StatelessWidget {
  final List<String> userPost = [];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 8,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(3.0),
            child: Container(
              color: Color.fromARGB(255, 205, 218, 89),
            ),
          );
        });
  }
}
