import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'login.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                ),
                child: Text(
                  'Name',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  'Home',
                  style: TextStyle(fontSize: 20),
                ),
                iconColor: Colors.deepPurple,
              ),
              const ListTile(
                leading: Icon(Icons.task),
                title: Text(
                  'Task List',
                  style: TextStyle(fontSize: 20),
                ),
                iconColor: Colors.deepPurple,
              ),
              const ListTile(
                leading: Icon(Icons.settings),
                title: Text(
                  'Settings',
                  style: TextStyle(fontSize: 20),
                ),
                iconColor: Colors.deepPurple,
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text(
                  'Disconnect',
                  style: TextStyle(fontSize: 20),
                ),
                focusColor: Colors.deepPurple,
                iconColor: Colors.deepPurple,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()));
                },
              )
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            children: [
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Column(
                    children: const [
                      Text(
                        'Total number of tasks',
                        style: TextStyle(fontSize: 16),
                      ),
                      Icon(
                        Icons.task,
                        color: Colors.deepPurple,
                        size: 30,
                      ),
                      Text(
                        "5",
                        style: TextStyle(fontSize: 30),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.deepPurple,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Column(
                    children: const [
                      Text(
                        'remaining tasks',
                        style: TextStyle(fontSize: 16),
                      ),
                      Icon(
                        Icons.watch_later_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                      Text(
                        "5",
                        style: TextStyle(fontSize: 30),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Column(
                    children: const [
                      Text(
                        'priority tasks',
                        style: TextStyle(fontSize: 16),
                      ),
                      Icon(
                        Icons.notification_important,
                        color: Colors.white,
                        size: 30,
                      ),
                      Text(
                        "5",
                        style: TextStyle(fontSize: 30),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.deepPurple,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Column(
                    children: const [
                      Text(
                        ' non-priority tasks',
                        style: TextStyle(fontSize: 16),
                      ),
                      Icon(
                        Icons.notification_important,
                        color: Colors.white,
                        size: 30,
                      ),
                      Text(
                        "5",
                        style: TextStyle(fontSize: 30),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Column(
                    children: const [
                      Text(
                        'Average tasks duration',
                        style: TextStyle(fontSize: 16),
                      ),
                      Icon(
                        Icons.watch,
                        color: Colors.white,
                        size: 30,
                      ),
                      Text(
                        "5",
                        style: TextStyle(fontSize: 30),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
