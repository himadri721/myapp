import 'package:flutter/material.dart';
import 'package:flutter_application_h/cart2.dart';
import 'package:flutter_application_h/checkbox.dart';
import 'package:flutter_application_h/constants.dart';

import 'package:flutter_application_h/homepage.dart';
import 'package:flutter_application_h/vege.dart';

class fruits extends StatelessWidget {
 
  List<String> currentState = Constants.fruitsMap.keys.toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FRUITS'),
        centerTitle: true,
        backgroundColor: Colors.amber,
        leading: IconButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ),
          ),
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => mycart2(),
              ),
            ),
            icon: Icon(Icons.shopping_bag),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
            itemCount: currentState.length,
            itemBuilder: (context, index) {
              return CustomCheckBox(objectName: currentState[index]);
            },
          ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
  child: const Text('NEXT'),
  onPressed: () => Navigator.push(
      context, MaterialPageRoute(builder: (context) => myvege())),
),
    );
  }
}
