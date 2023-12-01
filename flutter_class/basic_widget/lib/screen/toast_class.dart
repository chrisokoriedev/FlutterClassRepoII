import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastClass extends StatefulWidget {
  const ToastClass({super.key});

  @override
  State<ToastClass> createState() => _ToastClassState();
}

class _ToastClassState extends State<ToastClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () async {
                  await Fluttertoast.showToast(
                      msg: "This is Center Short Toast",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0);
                },
                child: const Text(
                  'Toast Button',
                )),
            ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Toast Button',
                )),
          ],
        ),
      ),
    );
  }
}
