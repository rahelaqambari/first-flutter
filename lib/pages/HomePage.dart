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
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Buy any book in a minute with"),
              Text("Bookfly", style: TextStyle(color: Colors.purple, fontSize: 30),)
            ],
          ),
           
        leading:  Icon(Icons.menu),

        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        backgroundColor: Colors.white,
        bottom: TabBar(
          labelColor: Colors.purple,
          unselectedLabelColor: Colors.black,
          indicatorColor: Colors.purple.shade500,
          tabs:[
            Tab(text: "Novel"), 
            Tab(text: "History"), 
            Tab(text: "Science"), 
             ]
         ),
      ),
      body: Column(
        children: [
          BookTile("Novel", 0),
          BookTile("History", 1),
          BookTile("Science", 2)
        ],
      ),
    )
    );
  }
}

Widget BookTile(String title, int index){
  return Padding(
    padding: const EdgeInsets.all(12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
        Text(title, style: TextStyle(fontSize: 32,fontWeight: FontWeight.w800,
        ),
        ),
        TextButton(onPressed: (){}, child: Text("see more", style: TextStyle(color: Colors.blue.shade500),))
      ],
    ),
    Divider(),
      ],
    ),
  );
}