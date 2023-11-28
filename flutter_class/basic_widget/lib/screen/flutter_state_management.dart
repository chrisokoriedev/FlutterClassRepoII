import 'package:flutter/material.dart';

class StateMangeClass extends StatefulWidget {
  const StateMangeClass({super.key});

  @override
  StateMangeClassState createState() => StateMangeClassState();
}

class StateMangeClassState extends State<StateMangeClass> {
  String _name = "Peter";

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(_name),
      onPressed: () {
        setState(() => _name = _name == "Peter" ? "John" : "Peter");
      },
    );
  }
}
