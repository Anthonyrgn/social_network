import 'package:flutter/material.dart';

class MainController extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MainState();
}

class MainState extends State<MainController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Salut"),
      ),
      body: Center(
        child: Text("Hello World"),
      ),
    );
  }
}
