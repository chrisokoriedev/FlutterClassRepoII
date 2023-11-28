import 'package:flutter/material.dart';

class CardClass extends StatelessWidget {
  const CardClass({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Card(
          elevation: 10.0,
          clipBehavior:Clip.antiAliasWithSaveLayer,
          margin: const EdgeInsets.all(10),
          shape:RoundedRectangleBorder(
            side: BorderSide(color: Colors.red,width: 2),
            borderRadius: BorderRadius.circular(30),
          ),
          color: Colors.grey,
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(Icons.album, size: 45),
                title: Text('Sonu Nigam'),
                subtitle: Text('Best of Sonu Nigam Song'),
                trailing: Text('4:45'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
