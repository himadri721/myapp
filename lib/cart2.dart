import 'package:flutter/material.dart';
import 'package:flutter_application_h/vege.dart';
import 'package:flutter_application_h/constants.dart';

class mycart2 extends StatefulWidget {
  // Constructor for FinalScreen
  const mycart2({Key? key}) : super(key: key);

  @override
  State<mycart2> createState() => _mycart2State();
}

class _mycart2State extends State<mycart2> {
  final array = DataStore.getArray();

  // Variable to store the final calculated price
  int finalPrice = 0;
  @override
  void initState() {
    // Called when the widget is inserted into the tree
    super.initState();
    // Calculate the total price by summing up individual item prices
    for (int i = 0; i < array.length; i++) {
      finalPrice += DataStore.getPrice(array[i]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('MY CART'),
        backgroundColor: Colors.amber,
        leading: IconButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => myvege()),
          ),
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        children: [
          // Display a text indicating items summary
          const Text(
            'Items Summary',
            style: TextStyle(color: Colors.black),
          ),
          // Expanded ensures that the ListView takes up all available vertical space
          Expanded(
            // ListView.builder creates a scrollable list of widgets based on the array
            child: ListView.builder(
              itemCount: array.length,
              itemBuilder: (context, index) {
                // Row widget arranges its children in a horizontal array with space between them
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Display the name of the item
                    Text(
                      array[index],
                      style: const TextStyle(color: Colors.black),
                    ),

                    // Display the price of the item
                    Text(
                      DataStore.getPrice(array[index]).toString(),
                      style: const TextStyle(color: Colors.black),
                    )
                  ],
                );
              },
            ),
          ),

          // Row widget arranges its children in a horizontal array with space between them
         Column(
          mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Display the total label
              const Text(
                'TOTAL',
                
                style: TextStyle(color: Colors.black,
                fontSize: 25),
                
              ),

              // Display the calculated total price
              Text(
                finalPrice.toString(),
                style: const TextStyle(color: Colors.black,
                fontSize: 25),
              )
            ],
          )
        ],
      ),
    );
  }
}
