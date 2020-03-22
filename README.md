# firebase_helpers

A package that provides various Google Firebase related services helpers. Provides helpers to perform queries on firestore, firebase auth etc.

![Publish](https://github.com/lohanidamodar/flutter_firebase_helpers/workflows/Publish/badge.svg)

## Getting Started

### Installation

Add to pubspec.yaml:

```yaml
dependencies:
  clean_nepali_calendar: latest
```

### Using firestore service
```dart
import 'package:firebase_helpers/firebase_helpers';

class Note {
  final String title;
  final String id;
  final String description;
  final DateTime createdAt;
  final String userId;
  Note({this.title, this.id, this.description, this.createdAt, this.userId});
  Note.fromDS(String id, Map<String, dynamic> data)
      : id = id,
        title = data['title'],
        description = data['description'],
        userId = data['user_id'],
        createdAt = data['created_at']?.toDate();
  Map<String, dynamic> toMap() => {
        "title": title,
        "description": description,
        "created_at": createdAt,
        "user_id": userId,
      };
}

DatabaseService<Note> notesDb = DatabaseService<Note>("notes",fromDS: (id,data) =>  Note.fromDS(id,data), toMap:(note) => note.toMap() );

Note note = Note(
    title: "Hello Note",
    description: "This is notes description",
);
notesDb.createItem(note); //this function will add our note item to the firestore database
```