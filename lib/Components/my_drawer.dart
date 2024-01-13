import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(children: [
        // logo
        DrawerHeader(
            child: Center(
          child: Icon(
            Icons.message,
            color: Theme.of(context).colorScheme.primary,
            size: 40,
          ),
        )),
        Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: ListTile(
            title: Text("Home"),
            leading: Icon(Icons.home),
            onTap: () {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: ListTile(
            title: Text("Configuração"),
            leading: Icon(Icons.settings),
            onTap: () {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: ListTile(
            title: Text("Terminar a sessão"),
            leading: Icon(Icons.logout),
            onTap: () {},
          ),
        ),
        // menu list
      ]),
    );
  }
}
