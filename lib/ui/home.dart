import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String name = '';
  final _currencies = ['USD', 'PLN', 'UAH', 'EUR'];
  String _currency = 'USD';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: 'Please insert your name'),
              onChanged: (String string) {
                setState(
                  () {
                    name = string;
                  },
                );
              },
            ),
            DropdownButton<String>(
              items: _currencies.map(
                (String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                },
              ).toList(),
              value: _currency,
              onChanged: (String value) {
                _onDropdownChanged(value);
              },
            ),
            Text("Hello, ${name}"),
          ],
        ),
      ),
    );
  }
  _onDropdownChanged(String value){
    setState(() {
      this._currency = value;
    });
  }
}
