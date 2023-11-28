import 'package:flutter/material.dart';

class TabBarClass extends StatelessWidget {
  const TabBarClass({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(child: Text('Chats')),
                Tab(child: Text('Updates')),
                Tab(child: Text('Call')),
              ],
            ),
          ),
          body: TabBarView(
            physics: const BouncingScrollPhysics(),
            children: getTabView,
          ),
        ));
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
      'It is a contact tab, which is responsible for displaying the contacts stored in your mobile',
      style: TextStyle(fontSize: 32.0),
    ));
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
      'It is a setting tab, which is responsible for displaying the contacts stored in your mobile',
      style: TextStyle(fontSize: 32.0),
    ));
  }
}

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
      'It is a setting tab, which is responsible for displaying the contacts stored in your mobile',
      style: TextStyle(fontSize: 32.0),
    ));
  }
}

List<Widget> getTabView = [
  const FirstScreen(),
  const SecondScreen(),
  const ThirdScreen()
];
