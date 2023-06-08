import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Column(
        children: [
          Text("Theme Data",
          style: TextStyle(
            fontSize: 30
          ),
          ),
        ],
      ),
    );
  }

  _appBar() {
    return AppBar(
      leading: GestureDetector(
        onTap:(){

        },
        child: Icon(Icons.nightlight_round,
        size: 20),
      ),
      actions: [
        Icon(Icons.person, size: 20,),
        SizedBox(width: 20,),
      ],
    );
  }
}
