import 'package:flutter/material.dart';
import 'package:widget/main.dart';

class ElevatedPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Elevated Button Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
            onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Basit butona tıklandı")),
              );
             },
            child: Text("Basit Button"),
            ),
            SizedBox(height: 10),

            ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Stilli butona tıklandı")),
                  );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.teal,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                  ),
                  elevation: 10,
                ),
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Text(
                      "Stilli Button",
                      style: TextStyle(fontSize: 18),
                      ),
                    ),
                ),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage())
                  );
                },
                child: Text("Ana Sayfaya Dön"))
          ],
        ),
      ),
    );
  }
}