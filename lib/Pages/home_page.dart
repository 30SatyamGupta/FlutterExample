import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key key }) : super(key: key);
  
  final int days = 30;
  final String flutter = "flutter";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App" , style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days course of $flutter "),
          ),  
        ), 
        drawer: MyDrawer(),
      );
  }
}
