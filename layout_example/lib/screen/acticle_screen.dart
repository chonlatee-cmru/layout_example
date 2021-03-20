import 'package:flutter/material.dart';

class ActicalScreen extends StatefulWidget {
  ActicalScreen({Key key}) : super(key: key);

  @override
  _ActicalScreenState createState() => _ActicalScreenState();
}

class _ActicalScreenState extends State<ActicalScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Center(
         child: Text("artical")
       ),
    );
  }
}