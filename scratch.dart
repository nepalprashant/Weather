void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String t2R = await task2();
  task3(t2R);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future<String> task2() async {
  Duration threeSec = Duration(seconds: 3);

  String result = 'abc';

  Future.delayed(threeSec, () {
    result = 'task 2 data';
    print('Task 2 complete');
  });
  return result;
}

void task3(String task2Data) {
  String result = 'task 3 data';
  print('Task 3 complete with $task2Data');
}
