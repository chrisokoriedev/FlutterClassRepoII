import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Note'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Add Note'),
            const Gap(40),
            TextFormField(),
            TextFormField(),
            const Gap(20),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                  fixedSize:
                      const MaterialStatePropertyAll(Size(double.maxFinite, 30)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)))),
              child: const Text('Save Note'),
            ),
          ],
        ),
      ),
    );
  }
}
