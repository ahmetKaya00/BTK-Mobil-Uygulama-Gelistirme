import 'package:flutter/material.dart';

class GridPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid 3X4"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for(int i = 0; i<3;i++)
              Row(
                children: [
                  for(int j = 0; j < 4; j++)
                    Expanded(
                      child: AspectRatio(
                        aspectRatio: 1.0,
                        child: Container(
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            '${i * 4 + j + 1}',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                    )
                ],
              )
          ],
        ),
      ),
    );
  }
}