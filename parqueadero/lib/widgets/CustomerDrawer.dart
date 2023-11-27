import 'package:flutter/material.dart';
import 'package:parqueadero/Widgets/MyHomePage.dart';

class CustomerDrawer extends StatelessWidget {
  const CustomerDrawer({super.key});

  Widget build(BuildContext context) {
    return Drawer(
      //Menu
      child: ListView(
        children: [
          Title(color: Colors.black, child: Text('menu')),
          ListTile(
            title: Text('Ir a otra página'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MyHomePage(
                        title: 'inico exitoso',
                      )));
            },
          )
        ],
      ),
    );
  }
}
