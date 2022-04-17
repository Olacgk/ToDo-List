import 'package:flutter/material.dart';


class Welcome extends StatelessWidget{
  const Welcome({Key? key}) : super(key: key);

  // static const Function() func = (){
  //   Navigator.pushNamed(context, Login);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/welcome.png', fit: BoxFit.cover,),
              const SizedBox(height: 15.0,),
              const Text('Hello!',
              textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15.0,),
              const Text('Welcome to your taskList App',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),),
              const SizedBox(height: 15.0,),
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
              const SizedBox(height: 15.0,),
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
                ),)
            ],
          ),
        ),]
      )
      );
  }

}