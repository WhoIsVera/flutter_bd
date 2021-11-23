import 'package:fluter_bd/db/operacion.dart';
import 'package:fluter_bd/models/note.dart';
import 'package:fluter_bd/pages/guardar.dart';
import 'package:flutter/material.dart';

class listado extends StatelessWidget {
  static const String ROUTE = "/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.pushNamed(context, guardar.ROUTE);
          },
        ),
        appBar: AppBar(
          title: Text("Censo de Vacunacion"),
        ),
        body: Container(
          child: _MyList(),
        ));
  }
}

class _MyList extends StatefulWidget {
  @override
  State<_MyList> createState() => _MyListState();
}

class _MyListState extends State<_MyList> {
  List<Note> notes = [];

  @override
  void initState() {
    _loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: notes.length,
      itemBuilder: (_, i) => _createItem(i),
    );
  }

  _loadData() async {
    List<Note> auxNote = await Operation.notes();
    setState(() {
      notes = auxNote;
    });
  }

  _createItem(int i) {
    return ListTile(
      title: Text(notes[i].toString()),
    );
  }
}
