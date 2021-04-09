import 'dart:ui';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        color: Colors.deepOrangeAccent,
        padding: EdgeInsets.only(top: 30, left: 10),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Margerita",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontSize: 30.0,
                        decoration: TextDecoration.none,
                        fontFamily: 'Oxygen',
                        fontWeight: FontWeight.w300),
                  ),
                ),
                Expanded(
                  child: Text(
                    "Tomato, Mozzarela, Basil",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontSize: 20.0,
                        decoration: TextDecoration.none,
                        fontFamily: 'Oxygen',
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Marinara",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontSize: 30.0,
                        decoration: TextDecoration.none,
                        fontFamily: 'Oxygen',
                        fontWeight: FontWeight.w300),
                  ),
                ),
                Expanded(
                  child: Text(
                    "Tomato, Garlic",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontSize: 20.0,
                        decoration: TextDecoration.none,
                        fontFamily: 'Oxygen',
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
