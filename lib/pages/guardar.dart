import 'package:fluter_bd/db/operacion.dart';
import 'package:fluter_bd/models/note.dart';
import 'package:flutter/material.dart';

class guardar extends StatelessWidget {
  static const String ROUTE = "/guardar";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Guardar"),
      ),
      body: Container(
        child: _editar(),
      ),
    );
  }
}

class _editar extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final idController = TextEditingController();
  final nombreController = TextEditingController();
  final coloniaController = TextEditingController();
  final telefonoController = TextEditingController();
  final preguntaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: idController,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Tienes que colocar datos";
                }
                return null;
              },
              decoration: InputDecoration(
                  labelText: "Id", border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: nombreController,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Tienes que colocar datos";
                }
                return null;
              },
              decoration: InputDecoration(
                  labelText: "Nombre", border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: coloniaController,
              maxLines: 4,
              maxLength: 500,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Tienes que colocar datos";
                }
                return null;
              },
              decoration: InputDecoration(
                  labelText: "Colonia", border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: telefonoController,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Tienes que colocar datos";
                }
                return null;
              },
              decoration: InputDecoration(
                  labelText: "Telefono", border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: preguntaController,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Tienes que colocar datos";
                }
                return null;
              },
              decoration: InputDecoration(
                  labelText: "¿Ya se aplico la vacuna del covid-19?",
                  border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
              child: Text("Guardar"),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  print("valido\n" +
                      idController.text +
                      nombreController.text +
                      coloniaController.text +
                      telefonoController.text +
                      preguntaController.text);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
