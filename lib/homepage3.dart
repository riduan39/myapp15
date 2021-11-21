import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage3 extends StatefulWidget {
  const Homepage3({Key? key}) : super(key: key);

  @override
  _Homepage3State createState() => _Homepage3State();
}

class _Homepage3State extends State<Homepage3> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(
                _value == false
                    ? "Unckecked"
                    : "Checked"),
            Checkbox(value: _value, onChanged: (value) {
              setState(() {
                _value = value!;
                print(_value);
              },);
            },)
          ],
        ),
      ),
    ));
  }
}
