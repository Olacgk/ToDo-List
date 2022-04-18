import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget{

  final _formKey = GlobalKey<FormState>();
  final _usernameController = new TextEditingController();
  final _nameController = new TextEditingController();
  final _passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome !',
              style: TextStyle(fontSize: 30.0),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 15.0,),
            Text('Create your account here!',
              style: TextStyle(fontSize: 25.0),
              textAlign: TextAlign.center,),
            SizedBox(height: 40.0,),

            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextField(
                    controller: _usernameController,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: 'username...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
                    ),
                    // validator:(String? v) {
                    //   return (v == null || v == "") ?
                    //       "This field is required !":null;
                    // },
                  ),
                  const SizedBox(height: 15.0,),
                  TextField(
                    controller: _nameController,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: 'your name...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
                    ),
                    // validator:(String? v) {
                    //   return (v == null || v == "") ?
                    //       "This field is required !":null;
                    // },
                  ),
                  const SizedBox(height: 15.0,),
                  TextField(
                    controller: _passwordController,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock),
                      hintText: 'password...',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14)
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
                    ),
                    // validator:(String? v) {
                    //   return (v == null || v == "") ?
                    //       "This field is required !":null;
                    // },
                  ),
                  const SizedBox(height: 15.0,),
                  TextField(
                    controller: _passwordController,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock),
                      hintText: ' confirm the password...',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14)
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
                    ),
                    // validator:(String? v) {
                    //   return (v == null || v == "") ?
                    //       "This field is required !":null;
                    // },
                  ),

                  const SizedBox(height: 40.0,),
                  Container(
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        color: Colors.deepPurple,
                      ),
                      child: const MaterialButton(
                        onPressed: null,
                        child: Text('Sign Up',
                            style: TextStyle(color: Colors.white, fontSize: 15.0)),
                      )
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}