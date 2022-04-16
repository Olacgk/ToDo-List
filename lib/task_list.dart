import 'package:flutter/material.dart';
import 'package:my_day_tasks/data/TaskDatabase.dart';
import 'package:my_day_tasks/data/task_model.dart';


class TaskList extends StatelessWidget{
  const TaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My tasks"),
      ),
      body: FutureBuilder<List<TaskModel>>(
        future: TaskDatabase.db.tasks(),
        builder: (BuildContext context, AsyncSnapshot<List<TaskModel>> snapshot){
          if (snapshot.hasData){
            List<TaskModel>? tasks = snapshot.data;
            return ListView.builder(
                itemCount: tasks!.length,
                itemBuilder: (context, index){
                  return TaskWidget(task: tasks[index]);
                }
            );
          }else{
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

}

class TaskWidget extends StatelessWidget {
  const TaskWidget({Key? key, required this.task}) : super(key: key);
  final TaskModel task;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:null,
      child: Card(
        margin: EdgeInsets.all(8),
        elevation: 8,
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(task.title,
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ),
                Text(task.date,
                    style: TextStyle(color: Colors.grey[500], fontSize: 16))
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Row(
                    children: [
                      IconButton(icon: const Icon(Icons.edit), color: Colors.blue, onPressed: null,),
                      IconButton(icon: const Icon(Icons.delete), color: Colors.red, onPressed: null,),
                    ],
                  )
                )
              ],
            )
          ],
        ),
      ),
    );

  }
}