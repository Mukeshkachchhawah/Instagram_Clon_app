import 'dart:async';
import 'dart:ui';

import 'package:clonapp/loginpage.dart';
import 'package:clonapp/homepage.dart';
import 'package:flutter/material.dart';

class SplaceScreen extends StatefulWidget {
  const SplaceScreen({Key? key}) : super(key: key);

  @override
  State<SplaceScreen> createState() {
    return IniState();
  }
}

class IniState extends State<SplaceScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginPage())));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Text(
          "ππ·πΌπ½πͺπ°π»πͺπΆ",
          style: TextStyle(
              fontSize: 35, color: Colors.red, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
