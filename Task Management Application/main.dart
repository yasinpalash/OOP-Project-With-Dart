import 'task.dart';
import 'task_list.dart';

void main() {
  TaskList tasklist = TaskList();

  tasklist.addTask(Task(
      id: 1,
      title: 'Complete project',
      description: 'Finish the task management project.'));
  tasklist.addTask(Task(
      id: 2,
      title: 'Study Dart',
      description: 'Learn Dart programming language.'));

  tasklist.viewTasks();
  tasklist.completedTask(1);
  tasklist.removeTask(2);
  tasklist.viewTasks();
}
