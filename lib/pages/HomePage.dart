import 'package:firstapp/book_repositry/BookRepositry.dart';
import 'package:firstapp/models/Book.dart';
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
        centerTitle: true,
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
            SingleBookLayout(Bookrepositry.novel[1]),
            Tab(text: "History"), 
            Tab(text: "Science"), 
             ]
         ),
      ),
      body:
      SingleChildScrollView(
        child: 
       Column(
        children: [
          BookTile("Novel", 0),
          BookList(Bookrepositry.novel),
          BookTile("History", 1),
          BookList(Bookrepositry.history),
          BookTile("Science", 2),
          BookList(Bookrepositry.seinces),
        ],
       ),
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
        TextButton(onPressed: (){}, child: Text("see more", style: TextStyle(color: Colors.blue.shade500),
        ),
        ),
      ],
    ),
    Divider(),
      ],
    ),
  );
}

Widget SingleBookLayout(Book book){
  return Padding(padding: EdgeInsets.symmetric(horizontal: 12),
  child: Padding(
    padding: const EdgeInsets.only(top: 12,left: 12,right: 12),
    child: SizedBox(
      width: double.infinity,
      height: 170,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Image.network(book.image,
            fit: BoxFit.cover,
            )),
            Expanded(
              flex: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text(book.name, style: TextStyle(fontSize: 26, fontWeight:  FontWeight.w700),),
                Text(book.description),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("${book.price}"),
                    IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_sharp))
                  ],
                ),
                ],
              ),
            ))
        ],
      ),
    ),
  ),
  );
}


Widget BookList(List<Book> books) {
  return Column(
   children: [...books.map((book) => SingleBookLayout(book)).toList()],
  );
}