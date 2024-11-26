import 'package:appwrite/models.dart';

class Task {
  final String id;
  final String name;
  final String photo;
  final bool isActive;

  Task({
    required this.id,
    required this.name,
    required this.photo,
    required this.isActive,
  });

  factory Task.formDocument(Document doc) {
    print(doc);
    return Task(
        id: doc.$id,
        name: doc.data['name'],
        photo: doc.data['photo'],
        isActive: doc.data['isActive']);
  }
}
