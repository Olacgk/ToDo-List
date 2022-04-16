import 'package:flutter/material.dart';
import 'package:my_day_tasks/data/task_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class TaskDatabase{
  TaskDatabase._();

  static final TaskDatabase db = TaskDatabase._();
  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await initDB();
    return _database!;
  }

  initDB() async {
    WidgetsFlutterBinding.ensureInitialized();
    return await openDatabase(
      join(await getDatabasesPath(), 'task.db'),
      onCreate: (db, version) {
        return db.execute(
            "CREATE TABLE task(id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, note TEXT, date TEXT, startime TEXT, ending TEXT)");
      },
      version: 1,
    );
  }

  void insertTask(TaskModel task) async {
    final Database db = await database;

    await db.insert(
      'task',
      task.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }
  Future<List<TaskModel>> tasks() async {
    final Database db = await database;
    final List<Map<String, dynamic>> maps = await db.query('task');
    List<TaskModel> tasks = List.generate(maps.length, (i) {
      return TaskModel.fromMap(maps[i]);
    });
    return tasks;
  }
}