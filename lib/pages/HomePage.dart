import 'package:flutter/material.dart';

class Homepage extends StatefulWidget{
   @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, child: Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text("Buy any book in a minute with"),
            Text("BookFly")
          ],
        ),
        leading:  Icon(Icons.menu),
      ),
    ));
  }
}