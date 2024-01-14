import 'package:flutter/material.dart';
import 'package:flutter_application_h/cart2.dart';
import 'package:flutter_application_h/fruits.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
 title: const Text('FOODISTA',
 style: TextStyle(
  fontSize: 18,
  color: Color.fromARGB(255, 139, 100, 96),
 ),), 
 centerTitle: true,
  backgroundColor: Colors.amber,
  leading: IconButton(
    onPressed: () {},
    icon: Icon(Icons.menu),
  ),
  actions: [
    IconButton(
      onPressed: () =>Navigator.push(context, MaterialPageRoute(builder: (context)=> mycart2())),
      icon: Icon(Icons.shopping_bag),
    ),
  ],
),
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      body: Column(children: [
        Container(
          
          color: Colors.deepPurpleAccent,
        ),
        Text(
          'Welcome to Foodista',
          textAlign: TextAlign.center,
          style: TextStyle(
            
            color: Color.fromARGB(255, 150, 205, 77),
            fontSize: 30,
          ),
        ),
        Text(
          'Lets get started',
          style: TextStyle(
            
            color: Color.fromARGB(255, 150, 205, 77),
            fontSize: 30,
          ),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        child: const Text('START'),
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => fruits())),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.pink,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white60,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'My Account',
          ),
        ],
      ),
    );
  }
}
