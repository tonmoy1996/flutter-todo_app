import "package:hive_flutter/hive_flutter.dart";

class DbClass {
  List toDoList = [];

  final _myBox = Hive.box('mybox');

  void createInitialData() {
    toDoList = [
      ["I am not done yet.", false],
      ["Todo Task", false]
    ];
  }

  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  void updateListData() {
    _myBox.put("TODOLIST", toDoList);
  }
}
