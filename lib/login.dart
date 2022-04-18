import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_day_tasks/signup.dart';

class LoginPage extends StatelessWidget{

  final _formKey = GlobalKey<FormState>();
  final _usernameController = new TextEditingController();
  final _passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome !',
              style: TextStyle(fontSize: 30.0),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 15.0,),
            const Text('Sign in to continue !',
              style: TextStyle(fontSize: 25.0),
              textAlign: TextAlign.center,),
            const SizedBox(height: 40.0,),

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
                  const SizedBox(height: 40.0,),
                  Container(
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        color: Colors.deepPurple,
                      ),
                      child: const MaterialButton(
                        onPressed: null,
                        child: Text('Login',
                            style: TextStyle(color: Colors.white, fontSize: 15.0)),
                      )
                  ),

                  const SizedBox(height: 5.0,),
                  Row(
                    children: [
                      const Text(
                        'Don\'t have an account ?',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.blue
                        ),
                      ),
                      const SizedBox(width: 10.0,),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 15.0
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}