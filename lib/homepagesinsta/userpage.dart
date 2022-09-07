import 'dart:ui';

import 'package:flutter/material.dart';

import '../demo/heart.dart';

class UserPage extends StatelessWidget {
  final String name;
  const UserPage({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey, shape: BoxShape.circle),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Icon(Icons.more_vert)
            ],
          ),
        ),
        Container(
          height: 400,
          color: Colors.grey,
        ),
        // Blow this post = Like, Communtns, shere, Save post

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FavHeart(),
                      ));
                },
                child: Row(
                  children: [
                    Icon(Icons.favorite),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.5),
                      child: Icon(Icons.message),
                    ),
                    Icon(Icons.share)
                  ],
                ),
              ),
              Icon(Icons.bookmark)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            children: [
              Text('Liked by'),
              Text(
                '  Mukesh kachchhawaha',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('  and'),
              Text('  others')
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: RichText(
            text: TextSpan(style: TextStyle(color: Colors.black), children: [
              TextSpan(
                  text: name, style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: '  very nice Photo')
            ]),
          ),
        )
      ],
    );
  }
}
