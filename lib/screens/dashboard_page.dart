import 'package:flutter/material.dart';

class MyDashBoardPage extends StatefulWidget {
  const MyDashBoardPage({
    Key key,
  }) : super(key: key);
  @override
  _MyDashBoardPageState createState() => _MyDashBoardPageState();
}

class _MyDashBoardPageState extends State<MyDashBoardPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.green,
      
    );
  }
}