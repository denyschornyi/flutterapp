import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: "Please provide your name"
              ),
              onChanged: (String string) {
                setState(() {
                  name = string;
                });
              },
            ),
            Text("Hello ${name}"),
          ],
        ),
      ),
    );
  }
}
