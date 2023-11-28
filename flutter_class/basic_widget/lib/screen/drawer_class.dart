import 'package:basic_widget/screen/home.dart';
import 'package:flutter/material.dart';

class DrawerClass extends StatelessWidget {
  const DrawerClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Drawer')),
      body: const Center(
          child: Text(
        'A drawer is an invisible side screen.',
        style: TextStyle(fontSize: 20.0),
      )),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text("Abhishek Mishra"),
              accountEmail: Text("abhishekm977@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text(
                  "A",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.contacts),
              title: const Text("Contact Us"),
              onTap: () {
                Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const BasicWidget()))
                    .then((value) => Navigator.pop(context));
              },
            ),
          ],
        ),
      ),
    );
  }
}
