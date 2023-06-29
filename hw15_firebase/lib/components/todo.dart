import 'package:flutter/material.dart';

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
  final _formKey = GlobalKey<State>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _titleController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Title',
                  filled: true,
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _descriptionController,
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
                onPressed: () {},
                icon: const Icon(Icons.arrow_drop_up, color: Colors.black),
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
