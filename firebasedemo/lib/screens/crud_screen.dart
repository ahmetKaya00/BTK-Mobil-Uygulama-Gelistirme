import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CrudScreen extends StatefulWidget{
  @override
  _CrudScreenState createState() => _CrudScreenState();
}

class _CrudScreenState extends State<CrudScreen>{
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final TextEditingController _controller = TextEditingController();

  Future<void> _createItem(String value) async{
    await _firestore.collection('items').add({'name': value});
  }
  Future<void> _updateItem(String id,String newValue) async{
    await _firestore.collection('items').doc(id).update({'name': newValue});
  }
  Future<void> _deleteItem(String id) async{
    await _firestore.collection('items').doc(id).delete();
  }
  Future<void> _showUpdateDialog(String id, String currentName) async{
    final TextEditingController updateController = TextEditingController(text: currentName);

    return showDialog(
        context: context,
        builder: (context){
          return AlertDialog(
            title: Text('Güncelle'),
            content: TextField(
              controller: updateController,
              decoration: InputDecoration(
                labelText: 'Yeni Değer',
                border: OutlineInputBorder(),
              ),
            ),
            actions: [
              TextButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  child: Text('İptal'),
              ),
              TextButton(
                onPressed: (){
                  if(updateController.text.isNotEmpty){
                    _updateItem(id, updateController.text);
                    Navigator.of(context).pop();
                  }
                },
                child: Text('Güncelle'),
              )
            ],
          );
        },
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Firebase CRUD"),
      ),
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.all(8),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Yeni veri ekle',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          ElevatedButton(
              onPressed: (){
                if(_controller.text.isNotEmpty){
                  _createItem(_controller.text);
                  _controller.clear();
                }
              },
              child: Text('Ekle'),
          ),
          Expanded(
              child: StreamBuilder<QuerySnapshot>(
                  stream: _firestore.collection('items').snapshots(),
                  builder: (context,snapshots){
                    if(snapshots.hasError){
                      return Center(child: Text('Hata: ${snapshots.error}'));
                    }
                    if(!snapshots.hasData){
                      return Center(child: CircularProgressIndicator());
                    }
                    final docs = snapshots.data!.docs;
                    return ListView.builder(
                        itemCount: docs.length,
                        itemBuilder: (context, index){
                        final doc = docs[index];
                        final name = doc['name'];
                        return ListTile(
                          title: Text(name),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                  onPressed: (){
                                    _showUpdateDialog(doc.id, name);
                                  },
                                  icon: Icon(Icons.edit),
                              ),
                              IconButton(
                                  onPressed: (){
                                    _deleteItem(doc.id);
                                  },
                                  icon: Icon(Icons.delete))
                            ],
                          ),
                        );
                        }
                        );
                  }
              ),
          ),
        ],
      ),
    );
  }
}