import 'package:flutter/material.dart';

class AuthController extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => AuthState();
}

class AuthState extends State<AuthController>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Text("Ici on fera notre Auth"),
      ),
    );
  }
}