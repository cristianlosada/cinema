import 'package:flutter/material.dart';
import 'package:proyecto_cinema/views/ticket_screen.dart';

class ReservasPage extends StatefulWidget {
  const ReservasPage({
    super.key,
  });

  @override
  State<ReservasPage> createState() => _ReservasPageState();
}

class _ReservasPageState extends State<ReservasPage> {
  TextEditingController _nombres = new TextEditingController();
  TextEditingController _documento = new TextEditingController();
  TextEditingController _apellidos = new TextEditingController();
  TextEditingController _telefono = new TextEditingController();
  TextEditingController _funcion = new TextEditingController();
  TextEditingController _combo = new TextEditingController();
  TextEditingController _teatro = new TextEditingController();
  String _selectedCombo = "Combo 1";
  String _selectedTeatro = "Teatro 1";
  String _selectedFuncion = "Funcion 1";

  final _comboList = ["Combo 1", "Combo 2", "Combo 3", "Combo 4"];
  final _teatroList = ["Teatro 1", "Teatro 2", "Teatro 3", "Teatro 4"];
  final _funcionList = ["Funcion 1", "Funcion 2", "Funcion 3", "Funcion 4"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        centerTitle: true,
        title: const Text('CinemaPark'),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25))),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 100.0, right: 20, left: 20),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _nombres,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: "Nombres"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _apellidos,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: "Apellidos"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _documento,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: "Documento"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _telefono,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: "Telefono"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButtonFormField(
                  value: _selectedCombo,
                  items: _comboList.map((e) {
                    return DropdownMenuItem(
                      child: Text(e),
                      value: e,
                    );
                  }).toList(),
                  onChanged: (val) {
                    setState(() {
                      _selectedCombo = val as String;
                    });
                  },
                  dropdownColor: Colors.deepPurple.shade50,
                  decoration: InputDecoration(
                      labelText: "Selecciona tu combo",
                      border: OutlineInputBorder()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButtonFormField(
                  value: _selectedTeatro,
                  items: _teatroList.map((e) {
                    return DropdownMenuItem(
                      child: Text(e),
                      value: e,
                    );
                  }).toList(),
                  onChanged: (val) {
                    setState(() {
                      _selectedTeatro = val as String;
                    });
                  },
                  dropdownColor: Colors.deepPurple.shade50,
                  decoration: InputDecoration(
                      labelText: "Selecciona el teatro",
                      border: OutlineInputBorder()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButtonFormField(
                  value: _selectedFuncion,
                  items: _funcionList.map((e) {
                    return DropdownMenuItem(
                      child: Text(e),
                      value: e,
                    );
                  }).toList(),
                  onChanged: (val) {
                    setState(() {
                      _selectedFuncion = val as String;
                    });
                  },
                  dropdownColor: Colors.deepPurple.shade50,
                  decoration: InputDecoration(
                      labelText: "Selecciona la función",
                      border: OutlineInputBorder()),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => TicketFinalView(
                                  name: _nombres.text,
                                  lastname: _apellidos.text,
                                  doc: _documento.text,
                                  telefono: _telefono.text,
                                  combo: _selectedCombo,
                                  teatro: _selectedTeatro,
                                  funcion: _selectedFuncion,
                                )));
                  },
                  child: Text("Generar ticket"))
            ],
          ),
        ),
      ),
    );
  }
}
