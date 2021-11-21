import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  _HomePage2State createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Container(
          height: 200,
          color: Colors.cyan,
          child: Hero(
              tag: "tag",
              child: Icon(
                Icons.message,
                size: 50,
              )),
        ),
      ),
    ));
  }
}
