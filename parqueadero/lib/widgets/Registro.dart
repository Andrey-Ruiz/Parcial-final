import 'package:flutter/material.dart';
import 'package:parqueadero/Widgets/CustomerDrawer.dart';

import 'MyHomePageB.dart';

class Registro extends StatefulWidget {
  const Registro({super.key});
  static const String nombre = 'Regis';

  State<Registro> createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  late TextEditingController _Di = TextEditingController();
  late TextEditingController _Nombre = TextEditingController();
  late TextEditingController _Celular = TextEditingController();
  late String _Torre = '';
  late TextEditingController _Apto = TextEditingController();
  late TextEditingController _Placa = TextEditingController();
  late TextEditingController _FechaL = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple, //color
        title: const Text(''),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16.0),
            child: const Icon(Icons.account_circle, color: Colors.white),
          ),
        ],
      ),
      drawer: const CustomerDrawer(),
      body: Container(
        margin: const EdgeInsets.only(left: 32, right: 32, top: 10),
        width: 350,
        height: 690,
        decoration: BoxDecoration(
          color: Color(0x95313131),
          borderRadius: BorderRadius.circular(20),
        ),
        child: SafeArea(
            child: Center(
          child: Column(
            children: [
              const SizedBox(height: 15.0),
              const Padding(
                padding: EdgeInsets.only(left: 30.0, bottom: 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('No. Documento:',
                      style: TextStyle(fontSize: 15, color: Colors.white)),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 30, right: 30),
                //saldo cartera
                child: TextField(
                  controller: _Di,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      fillColor: Colors.white),
                ),
              ),
              const SizedBox(height: 10.0),
              const Padding(
                padding: EdgeInsets.only(left: 30.0, bottom: 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Nombres y Apellidos:',
                      style: TextStyle(fontSize: 15, color: Colors.white)),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 30, right: 30),
                //saldo cartera
                child: TextField(
                  controller: _Nombre,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      fillColor: Colors.white),
                ),
              ),
              const SizedBox(height: 10.0),
              const Padding(
                padding: EdgeInsets.only(left: 30.0, bottom: 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('No. Celular:',
                      style: TextStyle(fontSize: 15, color: Colors.white)),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 30, right: 30),
                //saldo cartera
                child: TextField(
                  controller: _Celular,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      fillColor: Colors.white),
                ),
              ),
              const SizedBox(height: 10.0),
              const Padding(
                padding: EdgeInsets.only(left: 30.0, bottom: 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Torre',
                      style: TextStyle(fontSize: 15, color: Colors.white)),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 30, right: 30),
                child: DropdownButtonFormField(
                  items: const [
                    DropdownMenuItem(
                      value: 'A',
                      child: Text('A'),
                    ),
                    DropdownMenuItem(
                      value: 'B',
                      child: Text('B'),
                    ),
                  ],
                  onChanged: (String? value) {
                    _Torre = value!;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      fillColor: Colors.white),
                ),
              ),
              const SizedBox(height: 10.0),
              const Padding(
                padding: EdgeInsets.only(left: 30.0, bottom: 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Apartamento:',
                      style: TextStyle(fontSize: 15, color: Colors.white)),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 30, right: 30),
                //saldo cartera
                child: TextField(
                  controller: _Apto,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      fillColor: Colors.white),
                ),
              ),
              const SizedBox(height: 10.0),
              Row(
                children: [
                  IconButton(
                    padding: EdgeInsets.only(
                      left: 30,
                    ),
                    icon:
                        const Icon(Icons.camera, size: 30, color: Colors.white),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => MyHomePageB(
                                title: 'inico exitoso',
                              )));
                    },
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 30,
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Verificar Placa  Autorizar',
                          style: TextStyle(fontSize: 15, color: Colors.white)),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              const Padding(
                padding: EdgeInsets.only(left: 30.0, bottom: 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Placa:',
                      style: TextStyle(fontSize: 15, color: Colors.white)),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 30, right: 30),
                //saldo cartera
                child: TextField(
                  controller: _Placa,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      fillColor: Colors.white),
                ),
              ),
              const SizedBox(height: 10.0),
              const Padding(
                padding: EdgeInsets.only(left: 30.0, bottom: 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Fecha Limite Pago:',
                      style: TextStyle(fontSize: 15, color: Colors.white)),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 30, right: 30),
                //saldo cartera
                child: TextField(
                  controller: _FechaL,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      fillColor: Colors.white),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
