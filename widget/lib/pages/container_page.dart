import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Widget"),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                offset: Offset(5, 5),
              ),
            ],
            border: Border.all(
              color: Colors.white,
              width: 2,
            )
          ),
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          child: Text(
            "Container",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}