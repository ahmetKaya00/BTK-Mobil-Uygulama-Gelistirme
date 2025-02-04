import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget{
  final List<String> names = ["Ahmet","Ali","Ayşe","Fatma","Murat","Büşra"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Widget"),
      ),
      body: ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index){
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text(names[index][0]),
              ),
              title: Text(names[index]),
              subtitle: Text("Kullanıcı ${index + 1}"),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("${names[index]} seçildi"))
                );
              },
            );
          }
      ),
    );
  }
}