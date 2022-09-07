import 'package:clonapp/homepagesinsta/stroypage.dart';
import 'package:clonapp/homepagesinsta/userpage.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Story page
  final List people = [
    'Your Story',
    'Story 1',
    'Story 2',
    'Story 3',
    'Story 4',
    'Story 5',
    'Story 6',
    'Story 7',
    'Story 8',
    'Story 9',
    'Story 10'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '𝐈𝐧𝐬𝐭𝐚𝐠𝐫𝐚𝐦',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Row(
              children: [
                Icon(
                  Icons.add_box_sharp,
                  color: Colors.black,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 10),
                  child: Icon(
                    Icons.chat_rounded,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
              height: 130,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: people.length,
                  itemBuilder: (context, index) {
                    return StroyPage(text: people[index]);
                  })),

          //     instagram User pages
          // UserPage(name: 'mukesh'),
          // UserPage(
          //   name: 'mukesh',
          // ),
          // UserPage(
          //   name: 'mukesh',
          // ),
          // UserPage(
          //   name: 'mukesh',
          // ),
          // UserPage(
          //   name: 'mukesh',
          // )
// user pages varitakal
          Expanded(
              child: ListView.builder(
                  itemCount: people.length,
                  itemBuilder: (context, index) {
                    return UserPage(name: people[index]);
                  }))

          // Story lernig Example code frist
          // ListView(
          //   scrollDirection: Axis.horizontal,
          //   children: [
          //     StroyPage(
          //       text: 'Your Story',
          //     ),
          //     StroyPage(
          //       text: 'Story 1',
          //     ),
          //     StroyPage(
          //       text: 'Story 2',
          //     ),
          //     StroyPage(
          //       text: 'Story 3',
          //     ),
          //     StroyPage(
          //       text: 'Stroy 4',
          //     ),
          //     StroyPage(
          //       text: 'Stroy 5',
          //     ),
          //     StroyPage(
          //       text: 'Stroy 6',
          //     ),
          //     StroyPage(
          //       text: 'Stroy 7',
          //     ),
          //     StroyPage(
          //       text: 'Stroy 8',
          //     ),
          //     StroyPage(
          //       text: 'Stroy 9',
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
