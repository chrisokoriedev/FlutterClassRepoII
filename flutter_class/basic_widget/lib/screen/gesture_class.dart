// ignore_for_file: avoid_print

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'flutter_state_management.dart';

class GestureClass extends StatelessWidget {
  const GestureClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Text(
                'Welcome to Javatpoint',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 30,
                ),
              ),
            ),
            ListTile(
              title: Text('1'),
            ),
            ListTile(
              title: Text("All Mail Inboxes"),
              leading: Icon(Icons.mail),
            ),
            Divider(
              height: 0.2,
            ),
            ListTile(
              title: Text("Primary"),
            ),
            ListTile(
              title: Text("Social"),
            ),
            ListTile(
              title: Text("Promotions"),
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: GestureDetector(
              onTap: () => kDebugMode ? print('HEY') : null,
              child: Container(
                width: 100,
                height: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20)),
                child: const Text('Click Me'),
              ),
            ),
          ),
          const Gap(20),
          const StateMangeClass()
        ],
      ),
      persistentFooterButtons: <Widget>[
        ElevatedButton(
          onPressed: () {},
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Icon(
            Icons.clear,
            color: Colors.white,
          ),
        ),
      ],
      bottomNavigationBar: const BottomNav(),
    );
  }
}

class BottomNav extends StatefulWidget {
  const BottomNav({
    super.key,
  });

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      fixedColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(
          label: "Home",
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          label: "Search",
          icon: Icon(Icons.search),
        ),
        BottomNavigationBarItem(
          label: "User Profile",
          icon: Icon(Icons.account_circle),
        ),
      ],
      onTap: (int itemIndex) {
        setState(() {
          itemIndex = itemIndex;
        });
      },
    );
  }
}
