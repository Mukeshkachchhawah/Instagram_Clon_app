import 'package:clonapp/homepagesinsta/home.dart';
import 'package:clonapp/pagesclonapp/like.dart';
import 'package:clonapp/UserAccount/preson.dart';
import 'package:clonapp/pagesclonapp/reels.dart';
import 'package:clonapp/searchpages/search.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // bottum Navigation Bar
  int _selectedIndex = 0;
  void _navigatorBottomBar(int Index) {
    setState(() {
      _selectedIndex = Index;
    });
  }

  List<Widget> page = [Home(), Search(), Reels(), Like(), Preson()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   title: Text(
      //     '𝓘𝓷𝓼𝓽𝓪𝓰𝓻𝓪𝓶',
      //     style: TextStyle(
      //         fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
      //   ),
      //   actions: [
      //     IconButton(
      //       onPressed: () {},
      //       icon: Icon(Icons.add_box_rounded),
      //       color: Colors.black,
      //     ),
      //     IconButton(
      //       onPressed: () {},
      //       icon: Icon(Icons.messenger),
      //       color: Colors.black,
      //     )
      //   ],
      // ),
      body: page[_selectedIndex],
      // SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       // Row(
      //       //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       //   children: [
      //       //     Text(
      //       //       '𝓘𝓷𝓼𝓽𝓪𝓰𝓻𝓪𝓶',
      //       //       style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
      //       //     ),
      //       //     Padding(
      //       //       padding:
      //       //           const EdgeInsets.only(left: 10, top: 15, right: 10),
      //       //       child: IconButton(
      //       //           onPressed: () {},
      //       //           icon: Icon(
      //       //             Icons.add,
      //       //             size: 35,
      //       //           )),
      //       //     ),
      //       //     Padding(
      //       //       padding:
      //       //           const EdgeInsets.only(left: 10, top: 15, right: 10),
      //       //       child: IconButton(
      //       //           onPressed: () {},
      //       //           icon: Icon(
      //       //             Icons.add,
      //       //             size: 35,
      //       //           )),
      //       //     )
      //       //   ],
      //       // ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(
      //           height: 500,
      //           color: Colors.blue,
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(
      //           height: 500,
      //           color: Colors.blue,
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(
      //           height: 500,
      //           color: Colors.blue,
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(
      //           height: 500,
      //           color: Colors.blue,
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(
      //           height: 500,
      //           color: Colors.blue,
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(
      //           height: 250,
      //           color: Colors.blue,
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(
      //           height: 500,
      //           color: Colors.blue,
      //         ),
      //       )
      //     ],
      //   ),
      // ),
      bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: false,
          currentIndex: _selectedIndex,
          onTap: _navigatorBottomBar,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black, ),label: 'Home'),
            BottomNavigationBarItem( icon: Icon(Icons.search, color: Colors.black,),label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.video_call, color: Colors.black,),label: 'Video'),
            BottomNavigationBarItem(icon: Icon( Icons.favorite_sharp, color: Colors.black,), label: 'Like'),
            BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.black, ), label: 'Profile') ]),);}}
