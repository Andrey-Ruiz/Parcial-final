import 'package:flutter/material.dart';
import 'package:parqueadero/Widgets/HomeUser.dart';
import 'package:parqueadero/Widgets/MyHomePage.dart';
import 'package:parqueadero/Widgets/MyHomePageB.dart';
import 'package:parqueadero/Widgets/Registro.dart';
import 'package:parqueadero/Widgets/Session.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Hello World',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Session.nombre,
      routes: {
        Session.nombre: (context) => Session(),
        MyHomePage.nombre: (context) => MyHomePage(
              title: '',
            ),
        MyHomePageB.nombre: (context) => MyHomePageB(
              title: '',
            ),
        HomeUser.nombre: (context) => HomeUser(),
        Registro.nombre: (context) => Registro(),
      },
    );
  }
}
