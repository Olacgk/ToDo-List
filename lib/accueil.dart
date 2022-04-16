import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:my_day_tasks/task_list.dart';

class Accueil extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [Column(
          children: [
            Image.asset('assets/images/welcome.png', fit: BoxFit.cover,),
            const SizedBox(height: 15.0,),
            const Text('Hello!',
            textAlign: TextAlign.center,
            ),
            const SizedBox(height: 15.0,),
            const Text('Welcome to your taskList App',
            textAlign: TextAlign.center,),
            const SizedBox(height: 15.0,),
            Container(
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                color: Colors.deepPurple,
            ),
            child: const MaterialButton(
              onPressed: null,
              child: Text('Login'),
            )
            ),
            const SizedBox(height: 15.0,),
            Container(
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                color: Colors.deepPurple,
              ),
              child: const MaterialButton(
                onPressed: null,
                child: Text('Sign Up'),
              ),)
          ],
        ),]
      )
      );
  }

}