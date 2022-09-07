import 'package:clonapp/searchpages/searchbox.dart';
import 'package:clonapp/searchpages/searchtextfild.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: InkWell(
            // Search TextFild next Screen searchtextfild
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SearchTextFilde()));
            },
            child: Container(
              height: 45,
              padding: EdgeInsets.only(left: 10, right: 10),
              color: Color.fromARGB(255, 218, 212, 212),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Container(
                    child: Text(
                      'Search',
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      body: SearchBox(),
    );
  }
}
