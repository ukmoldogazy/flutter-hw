import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model.dart';

class Todo extends StatefulWidget {
  const Todo({super.key});

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  bool isCompleted = false;
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _authorController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  Future<void> addTodo() async {
    final db = FirebaseFirestore.instance;

    final todos = Todos(
      title: _titleController.text,
      description: _descriptionController.text,
      isCompleted: isCompleted,
      author: _authorController.text,
    );

    await db.collection('todos').add(todos.toMap());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Todo'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _titleController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Write title";
                  } else {
                    return null;
                  }
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Title',
                  filled: true,
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _descriptionController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Write description";
                  } else {
                    return null;
                  }
                },
                maxLines: 10,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Description',
                  filled: true,
                ),
              ),
              CheckboxListTile(
                value: isCompleted,
                onChanged: (value) {
                  setState(() {
                    isCompleted = value!;
                  });
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Write author";
                  } else {
                    return null;
                  }
                },
                controller: _authorController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Author',
                  filled: true,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return SimpleDialog(
                            backgroundColor: Colors.black.withOpacity(0.5),
                            title: const Text(
                              'Your data is sending...',
                              textAlign: TextAlign.center,
                            ),
                            children: const [
                              CupertinoActivityIndicator(
                                radius: 20,
                                color: Colors.orange,
                              ),
                            ],
                          );
                        });
                    await addTodo();
                    // ignore: use_build_context_synchronously
                    Navigator.popUntil(context, (route) => route.isFirst);
                  } else {
                    null;
                  }
                },
                icon: const Icon(Icons.arrow_upward, color: Colors.black),
                label: const Text(
                  'Send',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
