import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebasedemo/screens/login_screen.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget{
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    final User? currentUser = _auth.currentUser;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Hoşgeldin, ${currentUser?.email ?? 'Misafir'}',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          ElevatedButton(
              onPressed: () async{
                await _auth.signOut();
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                    (route) => false,
                );
              },
              child: Text("Çıkış Yap"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red
              ),
          )
        ],
      ),
    );
  }
}