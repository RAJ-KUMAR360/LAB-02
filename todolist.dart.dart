import 'dart:io';

void main() {
  List<String> tasks = [];
  
  while (true) {
    print("\nTo-Do List App");
    print("1. Add Task");
    print("2. View Tasks");
    print("3. Remove Task");
    print("4. Exit");
    stdout.write("Choose an option: ");
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        stdout.write("Enter task: ");
        String? task = stdin.readLineSync();
        if (task != null && task.isNotEmpty) {
          tasks.add(task);
          print("Task added successfully.");
        } else {
          print("Invalid input. Task cannot be empty.");
        }
        break;
      
      case '2':
        if (tasks.isEmpty) {
          print("No tasks available.");
        } else {
          print("\nYour Tasks:");
          for (int i = 0; i < tasks.length; i++) {
            print("${i + 1}. ${tasks[i]}");
          }
        }
        break;

      case '3':
        if (tasks.isEmpty) {
          print("No tasks to remove.");
        } else {
          stdout.write("Enter task number to remove: ");
          String? indexInput = stdin.readLineSync();
          int? index = int.tryParse(indexInput ?? '');

          if (index != null && index > 0 && index <= tasks.length) {
            print("Removed: ${tasks.removeAt(index - 1)}");
          } else {
            print("Invalid index. Please enter a valid task number.");
          }
        }
        break;

      case '4':
        print("Exiting... Goodbye!");
        return;

      default:
        print("Invalid choice. Please select a valid option.");
    }
  }
}
