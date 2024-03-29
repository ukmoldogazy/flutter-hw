class Source {
  Source({
    this.id,
    required this.name,
  });

  final String? id;
  final String name;

  factory Source.fromJSON(Map<String, dynamic> json) => Source(
        id: json['id'],
        name: json['name'],
      );
}
