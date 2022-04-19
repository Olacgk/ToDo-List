import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUpPage extends StatelessWidget{

  final _formKey = GlobalKey<FormState>();
  final _usernameController = new TextEditingController();
  final _nameController = new TextEditingController();
  final _passwordController = new TextEditingController();
  final _confirmPasswordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
      ),
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
            const Text('Create your account here!',
              style: TextStyle(fontSize: 25.0),
              textAlign: TextAlign.center,),
            const SizedBox(height: 40.0,),

            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
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
                    validator:(String? v) {
                      return (v == null || v == "") ?
                          "This field is required !":null;
                    },
                  ),
                  const SizedBox(height: 15.0,),
                  TextFormField(
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
                    validator:(String? v) {
                      return (v == null || v == "") ?
                          "This field is required !":null;
                    },
                  ),
                  const SizedBox(height: 15.0,),
                  TextFormField(
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
                    validator:(String? v) {
                      return (v == null || v == "") ?
                          "This field is required !":null;
                    },
                  ),
                  const SizedBox(height: 15.0,),
                  TextFormField(
                    controller: _confirmPasswordController,
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
                    validator:(String? v) {
                      if(_passwordController.text != _confirmPasswordController.text){
                        return 'Please re-enter the password';
                      }else{
                        return null;
                      }
                    },
                  ),

                  const SizedBox(height: 40.0,),
                  Container(
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        color: Colors.deepPurple,
                      ),
                      child: MaterialButton(
                        onPressed: () async{
                          if ( _formKey.currentState!.validate()){
                            final prefs = await SharedPreferences.getInstance();
                            prefs.setString("username", _usernameController.text);
                            prefs.setString("fullName", _nameController.text);
                            prefs.setString("password", _passwordController.text);

                            Fluttertoast.showToast(
                              msg: "Account created successfully!!!",
                              toastLength: Toast.LENGTH_LONG,
                              gravity: ToastGravity.BOTTOM,
                            );
                          }
                        },
                        child: const Text('Sign Up',
                            style: TextStyle(color: Colors.white, fontSize: 15.0)),
                      )
                  ),

                  const SizedBox(height: 15.0,),
                  Row(
                    children: [
                      const Text(
                        'You already have an account ?',
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
                          'Sign In',
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