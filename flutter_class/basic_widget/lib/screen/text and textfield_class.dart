// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:basic_widget/util/custom_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';


class TextWidget extends StatefulWidget {
  const TextWidget({super.key});

  @override
  State<TextWidget> createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  String isSelected = 'seller';
  var items = [
    'seller',
    'admin',
    'buyer',
    'Yahoo boy',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(title: Text("Text Widget Example")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          height: 700,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    width: 200,
                    alignment: Alignment.center,
                    color: Colors.black,
                    child: Text(
                      'Hello Blessing To The World 🙌',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          wordSpacing: 3.0,
                          letterSpacing: 1.7,
                          height: 2.0),
                      textDirection: TextDirection.rtl,
                      maxLines: 2,
                      overflow: TextOverflow.fade,
                    )),
              ),
              Gap(30),
              CustomTextField(
                hintText: 'username',
                suffixIconData: Icons.person_2,
              ),
              Gap(10),
              CustomTextField(
                hintText: 'password',
                suffixIconData: Icons.lock,
                obscure: false,
              ),

              // dropdownmenu
              DropdownButtonFormField(
                value: isSelected,
                alignment: AlignmentDirectional.bottomCenter,
                isExpanded: true,
                onChanged: (e) {
                  setState(() {
                    isSelected = e!;
                  });
                },
                items: items
                    .map(
                      (e) => DropdownMenuItem(
                        value: e,
                        child: Text(e),
                      ),
                    )
                    .toList(),
              ),
              DropdownButton(
                value: isSelected,
                alignment: AlignmentDirectional.bottomCenter,
                isExpanded: true,
                onChanged: (e) {
                  setState(() {
                    isSelected = e!;
                  });
                },
                items: items
                    .map(
                      (e) => DropdownMenuItem(
                        value: e,
                        child: Text(e),
                      ),
                    )
                    .toList(),
              ),
              Gap(20),
              RichText(
                  text: TextSpan(
                      text: 'Dont have an account? ',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                      children: [
                    TextSpan(
                        text: 'Sign up',
                        style: TextStyle(color: Colors.white),
                        recognizer: TapGestureRecognizer()..onTap = () {}),
                  ])),
              Gap(20),
              Container(
                width: 300,
                height: 40,
                alignment: Alignment.center,
                decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'Sign',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                    children: [
                      TextSpan(
                          text: '\tin', style: TextStyle(color: Colors.orange)),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
