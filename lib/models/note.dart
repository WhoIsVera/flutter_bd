class Note {
  final String id;
  final String nombre;
  final String colonia;
  final String telefono;
  final String pregunta;

  Note(
      {required this.id,
      required this.nombre,
      required this.colonia,
      required this.telefono,
      required this.pregunta});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nombre': nombre,
      'colonia': colonia,
      'telefono': telefono,
      'pregunta': pregunta
    };
  }
}
