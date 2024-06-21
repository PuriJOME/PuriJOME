void addStudent(List<String> students, String name) {
  students.add(name);
  print("Student '$name' added.");
}

void removeStudent(List<String> students, String name) {
  if (students.contains(name)) {
    students.remove(name);
    print("Student '$name' removed.");
  } else {
    print("Student '$name' not found.");
  }
}

void displayStudents(List<String> students) {
  if (students.isEmpty) {
    print("No students in the list.");
  } else {
    print("Student names:");
    for (String name in students) {
      print(name);
    }
  }
}

void main() {
  List<String> students = [];
  addStudent(students, "Chanankorn");
  addStudent(students, "Jonksuk");
  addStudent(students, "Sirirat");
  addStudent(students, "Birawit");
  displayStudents(students);
  removeStudent(students, "CJ");
  removeStudent(students, "Jonksuk");
  displayStudents(students);
}
