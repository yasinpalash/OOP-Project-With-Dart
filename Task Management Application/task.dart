class Task {
  final int id;
  String title;
  String description;
  bool isCompleted;
  Task(
      {required this.id,
      required this.title,
      required this.description,
      this.isCompleted = false});

  void complete() {
    isCompleted = true;
  }

  String toString() {
    return 'ID:$id,Title:$title,Description:$description,Completed:$isCompleted';
  }
}
