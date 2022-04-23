import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_day_tasks/data/TaskDatabase.dart';
import 'package:my_day_tasks/data/task_model.dart';
import 'package:my_day_tasks/task_list.dart';

class AddingTask extends StatefulWidget {
  const AddingTask({Key? key}) : super(key: key);

  @override
  State<AddingTask> createState() => _AddingTaskState();
}

class _AddingTaskState extends State<AddingTask> {
  final formKey = GlobalKey<FormState>();
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  final prioriteController = TextEditingController();
  final startDateController = TextEditingController();
  final endingDateController = TextEditingController();

  @override
  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    prioriteController.dispose();
    startDateController.dispose();
    endingDateController.dispose();
    super.dispose();
  }

  String? _sexe;
  static const String picture = "images/profil.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add a task"),
      ),
      body: Form(
        key: formKey,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 16.0, left: 16.0, right: 16.0, bottom: 8.0),
              child: TextFormField(
                controller: titleController,
                decoration: InputDecoration(
                    labelText: 'Title',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)))),
                validator: (String? value) {
                  return (value == null || value == "")
                      ? 'Ce champ est obligatoire'
                      : null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 8.0, left: 16.0, right: 16.0, bottom: 8.0),
              child: TextFormField(
                controller: descriptionController,
                decoration: InputDecoration(
                    labelText: 'Description',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)))),
                validator: (String? value) {
                  return (value == null || value == "")
                      ? 'Ce champ est obligatoire'
                      : null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 8.0, left: 16.0, right: 16.0, bottom: 8.0),
              child: TextFormField(
                controller: prioriteController,
                decoration: InputDecoration(
                    labelText: 'Urgent?',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)))),
                validator: (String? value) {
                  return (value == null || value == "")
                      ? 'Ce champ est obligatoire'
                      : null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 8.0, left: 16.0, right: 16.0, bottom: 8.0),
              child: TextFormField(
                controller: startDateController,
                decoration: InputDecoration(
                    labelText: 'Begin date',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)))),
                validator: (String? value) {
                  return (value == null || value == "")
                      ? 'Ce champ est obligatoire'
                      : null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 8.0, left: 16.0, right: 16.0, bottom: 8.0),
              child: TextFormField(
                controller: endingDateController,
                decoration: InputDecoration(
                    labelText: 'Ending date',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)))),
                validator: (String? value) {
                  return (value == null || value == "")
                      ? 'Ce champ est obligatoire'
                      : null;
                },
              ),
            ),
            const SizedBox(height: 8.0),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    var id = 0;
                    TaskModel task = TaskModel(
                        id,
                        titleController.value.text,
                        descriptionController.value.text,
                        prioriteController.value.text,
                        startDateController.value.text,
                        endingDateController.value.text);

                    TaskDatabase.db.insertTask(task);
                    id = id + 1;
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const TaskList()));
                  }
                },
                child: const Text('Save'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
