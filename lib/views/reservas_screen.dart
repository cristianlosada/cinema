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
  _ReservasPageState() {
    _selectedVal = _productSizeList[0];
  }

  final _productSizeList = ["Small", "Medium", "Large", "Xlarge"];
  String _selectedVal = "Small";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        centerTitle: true,
        title: const Text('CinemaPark'),
        actions: <Widget>[],
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
                  value: _selectedVal,
                  items: _productSizeList.map((e) {
                    return DropdownMenuItem(
                      child: Text(e),
                      value: e,
                    );
                  }).toList(),
                  onChanged: (val) {
                    setState(() {
                      _selectedVal = val as String;
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
                  value: _selectedVal,
                  items: _productSizeList.map((e) {
                    return DropdownMenuItem(
                      child: Text(e),
                      value: e,
                    );
                  }).toList(),
                  onChanged: (val) {
                    setState(() {
                      _selectedVal = val as String;
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
                  value: _selectedVal,
                  items: _productSizeList.map((e) {
                    return DropdownMenuItem(
                      child: Text(e),
                      value: e,
                    );
                  }).toList(),
                  onChanged: (val) {
                    setState(() {
                      _selectedVal = val as String;
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
                                telefono: _telefono.text)));
                  },
                  child: Text("Generar ticket"))
            ],
          ),
        ),
      ),
    );
  }
}
