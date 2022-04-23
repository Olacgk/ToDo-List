import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:my_day_tasks/addingTask.dart';
import 'package:my_day_tasks/task_list.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    loadInformation();
    super.initState();
  }

  String _username = " ";
  String _name = " ";

  loadInformation() async {
    final preferences = await SharedPreferences.getInstance();
    setState(() {
      _name = preferences.getString("username") ?? " ";
      _username = preferences.getString("username") ?? " ";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
              ),
              child: Text(
                _name,
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
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TaskList()));
              },
              leading: const Icon(Icons.task),
              title: const Text(
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LoginPage()));
              },
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              width: 230,
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                shadowColor: Colors.grey,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Column(
                    children: const [
                      Text(
                        'Total number of tasks',
                        style: TextStyle(fontSize: 20),
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
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 230,
              child: Card(
                color: Colors.deepPurple,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                shadowColor: Colors.grey,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Column(
                    children: const [
                      Text(
                        'Remaining tasks',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Icon(
                        Icons.watch_later_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                      Text(
                        "5",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 230,
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                shadowColor: Colors.grey,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Column(
                    children: const [
                      Text(
                        'Priority tasks',
                        style: TextStyle(fontSize: 20),
                      ),
                      Icon(
                        Icons.notification_important,
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
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 230,
              child: Card(
                color: Colors.deepPurple,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                shadowColor: Colors.grey,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Column(
                    children: const [
                      Text(
                        ' Non-priority tasks',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Icon(
                        Icons.notification_important,
                        color: Colors.white,
                        size: 30,
                      ),
                      Text(
                        "5",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 230,
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                shadowColor: Colors.grey,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Column(
                    children: const [
                      Text(
                        'Average tasks duration',
                        style: TextStyle(fontSize: 20),
                      ),
                      Icon(
                        Icons.watch,
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
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddingTask()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
