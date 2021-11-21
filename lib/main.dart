import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp15/homepage%202.dart';
import 'package:myapp15/homepage.dart';
import 'package:myapp15/homepage3.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage3(),
    );
  }
}
