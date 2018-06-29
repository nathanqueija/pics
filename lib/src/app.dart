// Import flutter helper library
import 'package:flutter/material.dart';

// Create a class that will be our custom widget
// must extend the Stateless widget
class App extends StatelessWidget {
  //must define a build method that return a widget that this widget will show
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lets see some images!'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => print('Hi there'),
          child: Icon(Icons.add_a_photo),
        ),
      ),
    );
  }
}
