import 'package:parqueadero/models/Autoriza.dart';
import 'package:parqueadero/models/CxCadmin.dart';
import 'package:parqueadero/models/Guest.dart';
import 'package:parqueadero/models/User.dart';

final List<User> user = [
  User(
  name: 'Jeider Rodriguez', 
  phone: '3056789123', 
  email: 'jero@administrador.com', 
  id: '1342267564', 
  torre: '', 
  apto: '', 
  admMes: '', 
  password: 'admin', 
  status: 'True', 
  type: 'administrador')
];

final List<CxCadmin> cxcadmin = [
  CxCadmin(
    anoAdm: '2023',
    mesAdm: '1',
    pagoAdm: '',
    fechaPago: '',
    user: [
      User(
      name: 'Luis Hernandez',
      phone: '3023435677',
      email: 'luhe@gmail.com',
      id: '1003207386',
      torre: 'A',
      apto: '101',
      admMes: '0',
      password: '1234abcd',
      status: 'True',
      type: 'residente')
    ]
  ),
  CxCadmin(
    anoAdm: '2023',
    mesAdm: '1',
    pagoAdm: '',
    fechaPago: '',
    user: [
      User(
      name: 'Jose Ruiz',
      phone: '3023435677',
      email: 'joru@gmail.com',
      id: '1003451743',
      torre: 'F',
      apto: '705',
      admMes: '7000',
      password: 'abcd1234',
      status: 'False',
      type: 'residente')
    ]
  ),
];

final List<Autoriza> autoriza = [
  Autoriza(
  fechaAuto: '', 
  placa: 'IEO617', 
  guest: [
  Guest(
    idV: '1002538754',
    nameV: 'Maria Domineguez')
  ]
  ),
  Autoriza(
  fechaAuto: '', 
  placa: 'ABC123', 
  guest: [
  Guest(
    idV: '1034564292',
    nameV: 'Josefa Alvarez')
  ]
  ),
];