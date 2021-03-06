import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController distanceController = TextEditingController();
  TextEditingController avgController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  String result = '';
  final _currencies = ['USD', 'PLN', 'UAH', 'EUR'];
  String _currency = 'USD';
  final double _formDistance = 5.0;

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.headline6;
    return Scaffold(
      appBar: AppBar(
        title: Text("Trip Cost Calculation"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Padding(
              padding:
                  EdgeInsets.only(top: _formDistance, bottom: _formDistance),
              child: TextField(
                controller: distanceController,
                decoration: InputDecoration(
                  labelText: "Distance",
                  hintText: 'e.g. 124',
                  labelStyle: textStyle,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: _formDistance, bottom: _formDistance),
              child: TextField(
                controller: avgController,
                decoration: InputDecoration(
                  labelText: "Distance per Unit",
                  hintText: 'e.g. 17',
                  labelStyle: textStyle,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: _formDistance, bottom: _formDistance),
                    child: TextField(
                      controller: priceController,
                      decoration: InputDecoration(
                        labelText: "Price",
                        hintText: 'e.g. 1.65',
                        labelStyle: textStyle,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ),
                Container(
                  width: _formDistance * 5,
                ),
                Expanded(
                  child: DropdownButton<String>(
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
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    child: Text(
                      'Submit',
                      textScaleFactor: 1.5,
                    ),
                    onPressed: () {
                      setState(() {
                        result = _calculate();
                      });
                    },
                  ),
                ),
                Expanded(
                  child: TextButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    child: Text(
                      'Reset',
                      textScaleFactor: 1.5,
                    ),
                    onPressed: () {
                     _reset();
                    },
                  ),
                ),
              ],
            ),
            Text(result),
          ],
        ),
      ),
    );
  }

  _onDropdownChanged(String value) {
    setState(() {
      this._currency = value;
    });
  }

  String _calculate() {
    double _distance = double.parse(distanceController.text);
    double _fuelCost = double.parse(priceController.text);
    double _consumption = double.parse(avgController.text);
    double _totalCost = _distance / _consumption * _fuelCost;

    String _result =
        'The total cost of your trip is ${_totalCost.toStringAsFixed(2)}  ${_currency}';
    return _result;
  }

  void _reset(){
    distanceController.text = '';
    avgController.text = '';
    priceController.text = '';
    setState(() {
      result = '';
    });
  }
}
