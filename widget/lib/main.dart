import 'package:flutter/material.dart';
import 'package:widget/pages/cloumn_page.dart';
import 'package:widget/pages/container_page.dart';
import 'package:widget/pages/elevated_button.dart';
import 'package:widget/pages/grid_page.dart';
import 'package:widget/pages/listview_page.dart';
import 'package:widget/pages/row_page.dart';
import 'package:widget/pages/text_page.dart';
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
          ),
          ListTile(
            title: Text("Column Widget Page"),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CloumnPage()),
              );
            },
          ),
          ListTile(
            title: Text("Container Widget Page"),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContainerPage()),
              );
            },
          ),
          ListTile(
            title: Text("Grid Widget Page"),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GridPage()),
              );
            },
          ),
          ListTile(
            title: Text("Text Widget Page"),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TextPage()),
              );
            },
          ),
          ListTile(
            title: Text("ListView Widget Page"),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ListViewPage()),
              );
            },
          ),
          ListTile(
            title: Text("Elevated Button Page"),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ElevatedPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}