import 'package:flutter/material.dart';

enum BestTutorSite { javatpoint, w3schools, tutorialandexample }

class CheckBoxClass extends StatefulWidget {
  const CheckBoxClass({super.key});

  @override
  State<CheckBoxClass> createState() => _CheckBoxClassState();
}

class _CheckBoxClassState extends State<CheckBoxClass> {
  bool valuefirst = false;
  bool valuesecond = false;
  BestTutorSite _site = BestTutorSite.javatpoint;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Checkbox(
            value: valuefirst,
            onChanged: (value) {
              setState(() {
                valuefirst = value!;
              });
            },
          ),
          Row(
            children: [
              Checkbox(
                value: valuesecond,
                onChanged: (value) {
                  setState(() {
                    valuesecond = value!;
                  });
                },
              ),
            ],
          ),
          ListTile(
            leading: Radio(
                value: BestTutorSite.javatpoint,
                groupValue: _site,
                onChanged: (value) {
                  setState(() {
                    _site = value!;
                  });
                }),
            title: Text('JavaTpoint'),
          ),
          ListTile(
            leading: Radio(
                value: BestTutorSite.w3schools,
                groupValue: _site,
                onChanged: (value) {
                  setState(() {
                    _site = value!;
                  });
                }),
            title: Text('w3schools'),
          ),
           ListTile(
             leading: Radio(
                value: BestTutorSite.tutorialandexample,
                groupValue: _site,
                onChanged: (value) {
                  setState(() {
                    _site = value!;
                  });
                }),
            title: Text('tutorialandexample'),
          ),
        ],
      ),
    );
  }
}
