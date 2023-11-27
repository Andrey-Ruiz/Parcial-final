import 'package:flutter/material.dart';
import 'package:parqueadero/Widgets/HomeUser.dart';
import 'package:parqueadero/Widgets/MyHomePageB.dart';
import 'package:parqueadero/models/CxCadmin.dart';
import 'package:parqueadero/data/Data.dart';
import 'package:parqueadero/models/User.dart';

class Session extends StatefulWidget {
  const Session({super.key});
  static const String nombre = 'inicio_S';

  State<Session> createState() => _SessionState();
}

class AuthService {
  Future<String?> iniciarSesion(
      String user, String password, List<CxCadmin> cxcadmin) async {
    for (CxCadmin cxc in cxcadmin) {
      for (User u in cxc.user) {
        if (u.email == user && u.password == password) {
          return u.type;
        }
      }
    }
    return null;
  }
}

class _SessionState extends State<Session> {
  late TextEditingController _emailController = TextEditingController();
  late TextEditingController _passwordController = TextEditingController();
  late bool _acceptTerms = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/fondo_p.jpg'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          margin: const EdgeInsets.all(32),
          width: 350,
          height: 650,
          decoration: BoxDecoration(
            color: Color(0x95313131),
            borderRadius: BorderRadius.circular(20),
          ),
          child: SafeArea(
              child: Center(
            child: Column(
              children: [
                Container(
                  //logo
                  margin:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  height: 270,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/logo.png'))),
                ),
                Container(
                  //correo
                  margin: const EdgeInsets.symmetric(
                    horizontal: 50,
                  ),
                  height: 50,
                  color: Colors.transparent,
                  child: TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                        labelText: 'Correo electrónico',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        filled: true,
                        fillColor: Colors.white),
                  ),
                ),
                Container(
                  //contraseña
                  margin:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  height: 50,
                  color: Colors.transparent,
                  child: TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                        labelText: 'Contraseña',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        filled: true,
                        fillColor: Colors.white),
                  ),
                ),
                Container(
                  //Check box
                  margin: const EdgeInsets.symmetric(
                    horizontal: 50,
                  ),
                  child: CheckboxListTile(
                    fillColor: MaterialStateProperty.resolveWith((states) {
                      if (!states.contains(MaterialState.selected)) {
                        return Colors.white;
                      }
                      return null;
                    }),
                    title: const Text('Acepto terminos y condiciones',
                        style: TextStyle(color: Colors.white)),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: _acceptTerms,
                    onChanged: (bool? value) {
                      setState(() {
                        _acceptTerms = value ?? false;
                      });
                    },
                  ),
                ),
                Container(
                  //boton de inico
                  margin:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      if (_acceptTerms == true) {
                        _login(context);
                      }
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    child: const Text('Confirmar ingreso',
                        style: TextStyle(color: Colors.black)),
                  ),
                )
              ],
            ),
          )),
        ),
      ),
    );
  }

  void _login(BuildContext context) async {
    String user = _emailController.text;
    String password = _passwordController.text;
    bool _isloged = false;

    //verificacion
    String? inicio =
        await AuthService().iniciarSesion(user, password, cxcadmin);

    setState(() {
      _isloged = inicio != null;
    });

    if (_isloged) {
      if (inicio == 'residente') {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => HomeUser()));
      } else if (inicio == 'administrador') {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => MyHomePageB(
                  title: 'inico exitoso',
                )));
      }
    }
  }
}
