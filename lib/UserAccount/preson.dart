import 'package:clonapp/UserAccount/account1.dart';
import 'package:clonapp/UserAccount/account2.dart';
import 'package:clonapp/UserAccount/account3.dart';
import 'package:clonapp/UserAccount/account4.dart';
import 'package:clonapp/homepagesinsta/stroypage.dart';
import 'package:flutter/material.dart';

class Preson extends StatefulWidget {
  const Preson({Key? key}) : super(key: key);

  @override
  State<Preson> createState() => _PresonState();
}

class _PresonState extends State<Preson> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Profile Picture User Account
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey, shape: BoxShape.circle),
                  ),
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            '204',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Post',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '460',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Followers',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '70',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Following',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ))
                ],
              ),
            ),
// User Name and details
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: Text(
                      'User Name',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      padding: EdgeInsetsDirectional.all(9),
                      child: Center(
                        child: Text('Edit Profile'),
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue),
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsetsDirectional.all(9),
                          child: Center(
                            child: Text('Edit Profile'),
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue),
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      )),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      padding: EdgeInsetsDirectional.all(9),
                      child: Center(
                        child: Text('Edit Profile'),
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue),
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  StroyPage(text: 'Story 1'),
                  StroyPage(text: 'Story 2'),
                  StroyPage(text: 'Story 3'),
                  StroyPage(text: 'Story 4'),
                  // StroyPage(text: 'Story 5'),
                  // StroyPage(text: 'Story 6'),
                  // StroyPage(text: 'Story 7'),
                  // StroyPage(text: 'Story 8')
                ],
              ),
            ),
            TabBar(tabs: [
              Tab(
                icon: Icon(
                  Icons.grid_3x3_outlined,
                  color: Colors.black,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.video_call,
                  color: Colors.black,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.shop,
                  color: Colors.black,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
              )
            ]),
            Expanded(
                child: TabBarView(
                    children: [Account1(), Account2(), Account3(), Account4()]))
          ],
        ),
      ),
    );
  }
}
