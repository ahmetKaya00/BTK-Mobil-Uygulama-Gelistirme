import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebasedemo/models/authentication_model.dart';
import 'package:flutter/material.dart';
class RegisterScreen extends StatefulWidget{
  @override
  _RegisteScreenState createState() => _RegisteScreenState();
}

class _RegisteScreenState extends State<RegisterScreen>{
  final FirebaseAuth _authModel = FirebaseAuth.instance;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _register() async{
    try{
      await _authModel.createUserWithEmailAndPassword(
        email:  _emailController.text.trim(),
        password:  _passwordController.text.trim(),
      );
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Kayıt başarılı bir şekilde oluşturuldu!")));
    }catch(e){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.toString())),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Register")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _register,
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}