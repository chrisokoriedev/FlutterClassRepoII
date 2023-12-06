import 'package:basic_widget/main.dart';
import 'package:basic_widget/model/notedpad.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hive_flutter/hive_flutter.dart';

class EditNoteView extends StatefulWidget {
  final String title;
  final int index;
  final String description;

  const EditNoteView(
      {super.key,
      required this.title,
      required this.description,
      required this.index});

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  final formKey = GlobalKey<FormState>();

  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  late String title;
  @override
  void initState() {
    super.initState();
    titleController.text = widget.title;
    descriptionController.text = widget.description;
  }

  updateNote() {
    debugPrint('Note Started');
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      debugPrint('Title: ${titleController.text}');
      debugPrint('Description: ${descriptionController.text}');
      try {
        Box<NotePad> notePadBox = Hive.box<NotePad>(Contants.hiveBoxName);
        notePadBox
            .putAt(
                widget.index,
                NotePad(
                    title: titleController.text,
                    description: descriptionController.text,
                    dateTime: DateTime.now()))
            .then((value) => Navigator.pop(context));
        debugPrint('Edit  successfully');
      } catch (e) {
        debugPrint('Error: ${e.toString()}');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Note'),
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('Edit Note'),
                    const Gap(40),
                    TextFormField(
                      controller: titleController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'enter value';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      maxLines: null,
                      controller: descriptionController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'enter value';
                        }
                        return null;
                      },
                    ),
                    const Gap(20),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                onPressed: updateNote,
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                    fixedSize: const MaterialStatePropertyAll(
                        Size(double.maxFinite, 30)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)))),
                child: const Text(
                  'Save Note',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
