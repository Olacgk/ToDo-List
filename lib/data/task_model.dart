class TaskModel {
  int id;
  String title;
  String note;
  String date;
  String startime;
  String ending;

  TaskModel(this.id, this.title, this.note, this.date,
      this.startime, this.ending);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'note': note,
      'date': date,
      'startime': startime,
      'ending': ending
    };
  }

  factory TaskModel.fromMap(Map<String, dynamic> map) => new TaskModel(
    map['id'],
    map['title'],
    map['note'],
    map['date'],
    map['startime'],
    map['ending']
  );
}
