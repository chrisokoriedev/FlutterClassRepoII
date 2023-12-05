import 'package:basic_widget/main.dart';
import 'package:basic_widget/model/notedpad.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hive_flutter/hive_flutter.dart';

class AddNote extends StatefulWidget {
  const AddNote({super.key});

  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  submitNote() {
    debugPrint('Note Started');
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      debugPrint('Title: ${titleController.text}');
      debugPrint('Description: ${descriptionController.text}');
      try {
        Box<NotePad> notePadBox = Hive.box<NotePad>(Contants.hiveBoxName);
        notePadBox
            .add(NotePad(
                title: titleController.text,
                description: descriptionController.text,
                dateTime: DateTime.now()))
            .then((value) => Navigator.pop(context));
        debugPrint('added successfully');
      } catch (e) {
        debugPrint('Error: ${e.toString()}');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Note'),
      ),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Add Note'),
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
                controller: descriptionController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'enter value';
                  }
                  return null;
                },
              ),
              const Gap(20),
              ElevatedButton(
                onPressed: submitNote,
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                    fixedSize: const MaterialStatePropertyAll(
                        Size(double.maxFinite, 30)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)))),
                child: const Text('Save Note'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
