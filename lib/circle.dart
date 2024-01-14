import 'package:flutter/material.dart';

class MyCircle extends StatelessWidget {
 

 
 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: 200,
        
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
        ),
      ),
    );
  }
}
