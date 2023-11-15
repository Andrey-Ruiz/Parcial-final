import 'package:parqueadero/models/Guest.dart';

class Autoriza{
  Autoriza({
    required this.fechaAuto,
    required this.placa,
    required this.guest
  });

  final String fechaAuto;
  final String placa;
  final List<Guest> guest;
}