import 'package:fluter_bd/models/note.dart';

import 'package:sqflite/sqflite.dart';

import 'package:path/path.dart';

class Operation {
  static Future<Database> _openDB() async {
    return openDatabase(join(await getDatabasesPath(), 'notes.db'),
        onCreate: (db, version) {
      return db.execute(
        "CREATE TABLE notes (id TEXT PRIMARY KEY, nombre TEXT, colonia TEXT, telefono TEXT, )",
      );
    }, version: 1);
  }

  static Future<int> insert(Note note) async {
    Database database = await _openDB();

    return database.insert("notes", note.toMap());
  }

  static Future<List<Note>> notes() async {
    Database database = await _openDB();

    final List<Map<String, dynamic>> notesMap = await database.query("notes");

    for (var n in notesMap) {
      print("____" + n['nombre']);
    }

    return List.generate(
        notesMap.length,
        (i) => Note(
            id: notesMap[i]['id'],
            nombre: notesMap[i]['nombre'],
            colonia: notesMap[i]['colonia'],
            telefono: notesMap[i]['telefono'],
            pregunta: notesMap[i]['pregunta']));
  }
}
