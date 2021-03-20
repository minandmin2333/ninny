import 'package:flutter/material.dart';

class ActivityScren extends StatefulWidget {
  ActivityScren({Key key}) : super(key: key);

  @override
  _ActivityScrenState createState() => _ActivityScrenState();
}

class _ActivityScrenState extends State<ActivityScren> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Activity Screen"),
      ),
    );
  }
}
