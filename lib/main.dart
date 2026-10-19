// import 'package:firstapp/pages/HomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Homepage(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("HomeWork"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width * 0.8,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(colors: [
                  Color(0xFFFC0FC0),
                  Color(0xFFFA003F),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight, 
                ),
                
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadiusGeometry.only(topRight: Radius.circular(15),topLeft: Radius.circular(15)),
                      child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3F6lCL84VQM4RPXUDMOLYp9Y-q2MuQ2hvy5g3xWXxJg&s=10"),
                    ),
                    Text("Flutter Development".toUpperCase(), style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.w900),
                    ),
                    Text(
                      "2:00 - 3:00",
                      style: TextStyle(color: Colors.grey.shade400),
                    ),
                    Text("lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
                    ,style: TextStyle(color: Colors.white30),),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
          );
  }
}