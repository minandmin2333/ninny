import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController input = new TextEditingController();
  void scan() async {
    String cameraScanResult = await scanner.scan();
    setState(() {
      input.text = cameraScanResult;
    });
  }

  void copy() {}
  void share() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("QRCode Scanner")),
        body: Container(
          child: Column(
            children: [
              Text("กดปุ่ม สแกน เพื่อนทำการสแกนส์"),
              Stack(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    maxLines: 10,
                  ),
                  Positioned(
                      top: 10,
                      right: 10,
                      child: Column(children: [
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.copy),
                          label: Text("คัดลอก"),
                        ),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.share),
                          label: Text("แชร์"),
                        )
                      ]))
                ],
              ),
              Container(
                width: 150,
                child: ElevatedButton.icon(
                  onPressed: scan,
                  icon: Icon(Icons.camera),
                  label: Text("แสกน"),
                ),
              )
            ],
          ),
        ));
  }
}
