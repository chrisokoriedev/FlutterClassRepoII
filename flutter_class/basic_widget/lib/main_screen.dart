import 'package:basic_widget/screen/card_class.dart';
import 'package:basic_widget/screen/gesture_class.dart';
import 'package:basic_widget/screen/home.dart';
import 'package:basic_widget/screen/random_class.dart';
import 'package:basic_widget/screen/stack_class.dart';
import 'package:basic_widget/screen/tab_bar.dart';
import 'package:flutter/material.dart';

import 'screen/drawer_class.dart';
import 'screen/list_class.dart';
import 'screen/row_and_column.dart';
import 'screen/text and textfield_class.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('Flutter Class'),
        centerTitle: true,
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        physics: BouncingScrollPhysics(),
        child: Column(children: [
          BodyComponet(
            title: 'Text And TextField',
            iconData: Icons.text_decrease,
            pressWIdgetScreen: TextWidget(),
          ),
          BodyComponet(
            title: 'Card',
            iconData: Icons.card_giftcard,
            pressWIdgetScreen: CardClass(),
          ),
          BodyComponet(
            title: 'home',
            iconData: Icons.home,
            pressWIdgetScreen: TextWidget(),
          ),
          BodyComponet(
            title: 'Gesture',
            iconData: Icons.smart_button,
            pressWIdgetScreen: GestureClass(),
          ),
          BodyComponet(
            title: 'Container',
            iconData: Icons.confirmation_number,
            pressWIdgetScreen: BasicWidget(),
          ),
          BodyComponet(
            title: 'Row and Column',
            iconData: Icons.blur_linear_rounded,
            pressWIdgetScreen: RowAndColumn(),
          ),
          BodyComponet(
            title: 'Stack',
            iconData: Icons.stacked_bar_chart,
            pressWIdgetScreen: StackClass(),
          ),
          BodyComponet(
            title: 'Random',
            iconData: Icons.window,
            pressWIdgetScreen: RandomColorWidget(),
          ),
          BodyComponet(
            title: 'Tab',
            iconData: Icons.tab,
            pressWIdgetScreen: TabBarClass(),
          ),
          BodyComponet(
            title: 'Drawer',
            iconData: Icons.menu,
            pressWIdgetScreen: DrawerClass(),
          ),
          BodyComponet(
            title: 'List',
            iconData: Icons.list_alt_sharp,
            pressWIdgetScreen: FlutterListClass(),
          ),
        ]),
      ),
    );
  }
}

class BodyComponet extends StatelessWidget {
  final String title;
  final IconData iconData;
  final Widget pressWIdgetScreen;
  const BodyComponet({
    super.key,
    required this.title,
    required this.iconData,
    required this.pressWIdgetScreen,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        onTap: () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => pressWIdgetScreen)),
        leading: Icon(iconData),
        title: Text(title),
      ),
    );
  }
}
