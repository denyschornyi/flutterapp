import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home.dart';

void main() => runApp(new HelloFlutterApp());


class HelloFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello flutter app',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'First flutter app',
            textDirection: TextDirection.ltr,
          ),
        ),
        body: Home()
      ),
    );
  }
}
