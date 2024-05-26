import 'task.dart';

class TaskList {
  final List<Task> _tasks = [];

  void addTask(Task task) {
    _tasks.add(task);
    print('Task added:${task.title}');
  }

  void completedTask(int taskId) {
    for (var task in _tasks) {
      if (task.id == taskId) {
        task.complete();
        print('Task${task.title} marked as completed.');
        return;
      }
    }
    print('Task with ID $taskId not found.');
  }

  void removeTask(int taskId) {
    _tasks.removeWhere((task) => task.id == taskId);
    print('Task With ID $taskId removed.');
  }

  void viewTasks() {
    if (_tasks.isEmpty) {
      print('No tasks available.');
    } else {
      print('Tasks:');
      for (var task in _tasks) {
        print(task);
      }
    }
  }
}
