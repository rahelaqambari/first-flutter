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
            Text("BookFly", style: TextStyle(color: Colors.purple, fontSize: 30),)
          ],
        ),
        leading:  Icon(Icons.menu),

        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        backgroundColor: Colors.white,
        bottom: TabBar(
          labelColor: Colors.purple,
          unselectedLabelColor: Colors.black,
          indicatorColor: Colors.purple.shade500,
          tabs:[Text("Novel"),Text("History"),Text("Seience")],
         ),
      ),
    )
    );
  }
}