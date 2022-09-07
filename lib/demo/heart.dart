import 'package:flutter/material.dart';

class FavHeart extends StatefulWidget {
  const FavHeart({Key? key}) : super(key: key);

  @override
  State<FavHeart> createState() => _FavHeartState();
}

class _FavHeartState extends State<FavHeart> {
  bool isFavroite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {},
          child: Icon(
            Icons.favorite,
            color: isFavroite == true
                ? Colors.red
                : Color.fromARGB(255, 224, 126, 126),

            // color: if(isFavroite == true) Colors.red else Colors.black,

            size: 160,
          ),
        ),
      ),
    );
  }
}
