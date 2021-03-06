import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      drawer: Drawer(child: Text("Hello")),
      appBar: AppBar(
        title: Text("Appication Booking Teble"),
      ),
      body: Center(
        child: Text("My First Porject"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.phone), label: "phone"),
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard), label: "dashboard")
        ],
      ),
    ),
  ));
}
