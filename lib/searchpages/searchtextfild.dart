import 'package:clonapp/searchpages/searchhistory.dart';
import 'package:flutter/material.dart';

class SearchTextFilde extends StatefulWidget {
  @override
  State<SearchTextFilde> createState() => _SearchTextFildeState();
}

class _SearchTextFildeState extends State<SearchTextFilde> {
  final searchcontroller = TextEditingController();

  List<String> list = [];
  void additem(String item) {
    list.add(item);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: BackButton(
          color: Colors.black,
        ),
        title: TextField(
          controller: searchcontroller,
          style: TextStyle(height: 2),
          decoration: InputDecoration(
              hintText: 'Search',
              hintStyle:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
        ),
        actions: [
          ElevatedButton(
              onPressed: () {
                additem(searchcontroller.text);
              },
              child: Text("Secarch"))
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recent',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SearchHistory()));
                  },
                  child: Text(
                    'See All',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        color: Colors.blue),
                  ),
                ),
                // Expanded(
                //     child: ListView.builder(
                //   itemBuilder: countlist,
                //   itemCount: list.length,
                // ))
              ],
            ),
          )
        ],
      ),
    );
  }

  // Widget countlist(BuildContext context, int index) {
  //   return Container(
  //       decoration: BoxDecoration(),
  //       child: ListTile(
  //         title: Text(list[index]),
  //         trailing: IconButton(
  //             onPressed: () {
  //               list.remove(index);
  //             },
  //             icon: Icon(Icons.clear)),
  //       ));
  // }
}
