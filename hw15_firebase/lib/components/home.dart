import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Stream<QuerySnapshot> readTodo() {
    final db = FirebaseFirestore.instance;
    return db.collection('todos').snapshots();
  }

  Future<void> updateTodo(Todos todo) async {
    final db = FirebaseFirestore.instance;
    await db.collection('todos').doc(todo.id).update(
      {"isCompleted": !todo.isCompleted},
    );
  }

  @override
  void initState() {
    readTodo();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const SelectableText('HomePage'),
      ),
      body: StreamBuilder(
          stream: readTodo(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CupertinoActivityIndicator();
            } else if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            } else if (snapshot.hasData) {
              final List<Todos> todos = snapshot.data!.docs
                  .map((e) => Todos.fromMap(e.data() as Map<String, dynamic>)
                    ..id = e.id)
                  .toList();

              return ListView.builder(
                itemCount: todos.length,
                itemBuilder: (context, index) {
                  final todo = todos[index];

                  return Card(
                    child: ListTile(
                      leading: Text(todo.title),
                      title: Text(todo.description),
                      subtitle: Text(todo.author),
                      trailing: Checkbox(
                        value: todo.isCompleted,
                        onChanged: (value) async {
                          await updateTodo(todo);
                        },
                      ),
                    ),
                  );
                },
              );
            } else {
              return const Text('There are nexpected errors');
            }
          }),
    );
  }
}
