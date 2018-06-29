// Import flutter helper library
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' show get;
import 'models/image_model.dart';
import 'widgets/image_list.dart';

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

// Create a class that will be our custom widget
// must extend the Stateless widget
class AppState extends State<App> {
  int counter = 0;
  List<ImageModel> images = [];

  void fetchImage() async {
    counter++;
    final response =
        await get('https://jsonplaceholder.typicode.com/photos/$counter');

    final imageModel = ImageModel.fromJson(json.decode(response.body));

    setState(() {
      images.add(imageModel);
    });
  }

  //must define a build method that return a widget that this widget will show
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lets see some images!'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: fetchImage,
          child: Icon(Icons.add_a_photo),
        ),
        body: ImageList(images),
      ),
    );
  }
}
