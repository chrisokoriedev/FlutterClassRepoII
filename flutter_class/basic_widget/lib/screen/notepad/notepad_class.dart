import 'package:basic_widget/main.dart';
import 'package:basic_widget/model/notedpad.dart';
import 'package:basic_widget/screen/notepad/add_note.dart';
import 'package:basic_widget/screen/notepad/edit_note.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:timeago/timeago.dart' as timeago;

class NotedPadApp extends StatefulWidget {
  const NotedPadApp({super.key});

  @override
  State<NotedPadApp> createState() => _NotedPadAppState();
}

class _NotedPadAppState extends State<NotedPadApp> {
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
            ValueListenableBuilder(
                valueListenable:
                    Hive.box<NotePad>(Contants.hiveBoxName).listenable(),
                builder: (context, Box<NotePad> boxData, _) {
                  if (boxData.values.isEmpty) {
                    const Center(
                        child: Text(
                      'No Note added ',
                      style: TextStyle(color: Colors.black),
                    ));
                  }
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: boxData.length,
                    itemBuilder: (context, index) {
                      NotePad? notePadContent = boxData.getAt(index);
                      return Dismissible(
                        key: UniqueKey(),
                        onDismissed: (DismissDirection) =>
                            boxData.deleteAt(index),
                        background: Container(
                          color: Colors.green,
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.only(left: 16),
                          child: const Icon(
                            Icons.delete,
                            color: Colors.white,
                          ),
                        ),
                        secondaryBackground: Container(
                          color: Colors
                              .red, // Secondary background color when swiping to delete.
                          alignment: Alignment.centerRight,
                          padding: const EdgeInsets.only(right: 16),
                          child: const Icon(
                            Icons.delete,
                            color: Colors.white,
                          ),
                        ),
                        child: InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => EditNoteView(
                                        title: notePadContent.title,
                                        description: notePadContent.description,
                                        index: index,
                                      ))),
                          child: Card(
                            child: ListTile(
                              title: Text(notePadContent!.title,
                                  maxLines: 1, overflow: TextOverflow.fade),
                              subtitle: Text(notePadContent.description,
                                  maxLines: 2, overflow: TextOverflow.ellipsis),
                              trailing: Text(
                                  timeago.format((notePadContent.dateTime))),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                })
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
