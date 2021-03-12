import 'package:flutter/material.dart';
import 'package:flutter_todo_app/todo_add_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Todo App',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TodoListPage(),
    );
  }
}

 // リスト一覧画面用Widget
class TodoListPage extends StatefulWidget {

  @override
  _TodoListPageState createState() => _TodoListPageState();

}

class _TodoListPageState extends State<TodoListPage> {
  // Todoリストのデータ
  List<String> todoList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('リスト一覧'),
      ),
      body: ListView.builder(
      itemCount: todoList.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text(todoList[index]),
          ),
        );
      },
    ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final newListText = await Navigator.of(context).push(
              MaterialPageRoute(builder: (context) {
                return TodoAddPage();
              }),
          );
          if (newListText != null){
            // キャンセルした場合は newListText が null となるので注意
            setState(() {
              // リスト追加
              todoList.add(newListText);
            });
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}


