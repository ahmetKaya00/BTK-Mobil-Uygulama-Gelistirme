import 'package:flutter/material.dart';

class CloumnPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Column Widget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.red,
              width: 50,
              height: 50,
              child: Center(
                child: Text(
                  "Satır 1",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              color: Colors.orange,
              width: 50,
              height: 50,
              child: Center(
                child: Text(
                  "Satır 2",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              color: Colors.blue,
              width: 50,
              height: 50,
              child: Center(
                child: Text(
                  "Satır 3",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}