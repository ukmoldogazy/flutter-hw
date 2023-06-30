import 'dart:convert';

class Todos {
  Todos({
    this.id,
    required this.title,
    required this.description,
    required this.isCompleted,
    required this.author,
  });
  String? id;
  final String title;
  final String description;
  final bool isCompleted;
  final String author;

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'isComplated': isCompleted,
      'author': author,
    };
  }

  factory Todos.fromMap(Map<String, dynamic> map) {
    return Todos(
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      isCompleted: map['isComplated'] ?? false,
      author: map['author'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Todos.fromJson(String source) => Todos.fromMap(json.decode(source));
}
