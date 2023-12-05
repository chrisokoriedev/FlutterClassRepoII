import 'package:basic_widget/screen/notepad/add_note.dart';
import 'package:flutter/material.dart';

class NotedPadApp extends StatelessWidget {
  const NotedPadApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Notepad',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          children: [
            ListView(
              shrinkWrap: true,
              children: [
                InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const AddNote())),
                  child: const Card(
                    child: ListTile(
                      title: Text('This is my title'),
                      subtitle: Text('This is my subtitle'),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (_) => const AddNote())),
        child: const Icon(Icons.add),
      ),
    );
  }
}
