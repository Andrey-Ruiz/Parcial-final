import 'package:flutter/material.dart';
import 'package:parqueadero/Localstorage/Sharepreference.dart';
import 'package:parqueadero/MyApp.dart';

void main() async {
  final prefs = PrefernciaUsuario();
  await prefs.initPrefs();

  runApp(const MyApp());
}
