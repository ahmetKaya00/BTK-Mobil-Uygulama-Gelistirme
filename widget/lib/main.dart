import 'package:flutter/material.dart';
import 'package:widget/row_page.dart';
void main(){
  runApp(myApp());
}

class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Widget',
      theme: ThemeData(primaryColor: Colors.blue),
      home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widget Exproler"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("Row Widget Page"),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RowPage()),
              );
            },
          )
        ],
      ),
    );
  }
}