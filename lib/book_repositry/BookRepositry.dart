import 'package:firstapp/models/Book.dart';

class Bookrepositry {
  static List<Book> novel = [
    Book(name: "Forty rules of love", price: 10.2, description: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur consectetur aspernatur.", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcIkADD3eSpMCjfcWRGqIET6EW6uDsNSggOsgok-CcGQ&s=10"),
    Book(name: "One of is laying", price: 12.64, description: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur consectetur aspernatur.", image: "https://images.thalia.media/-/BF2000-2000/c9acc9cacfb44366a629a825098afb98/one-of-us-is-lying-gebundene-ausgabe-karen-m-mcmanus.jpeg"),
    Book(name: "Before the fall", price: 5.26, description: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur consectetur aspernatur.", image: "imag.jpg"),
  ];

   static List<Book> history = [
    Book(name: "Forty rules of love", price: 10.2, description: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur consectetur aspernatur.", image: "imag.jpg"),
    Book(name: "One of us say lie", price: 12.64, description: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur consectetur aspernatur.", image: "imag.jpg"),
    Book(name: "Before the fall", price: 5.26, description: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur consectetur aspernatur.", image: "imag.jpg"),
  ];

   static List<Book> seinces = [
    Book(name: "Forty rules of love", price: 10.2, description: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur consectetur aspernatur.", image: "imag.jpg"),
    Book(name: "One of us say lie", price: 12.64, description: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur consectetur aspernatur.", image: "imag.jpg"),
    Book(name: "Before the fall", price: 5.26, description: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur consectetur aspernatur.", image: "imag.jpg"),
  ];
 
}