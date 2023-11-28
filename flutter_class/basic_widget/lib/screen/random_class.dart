import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RandomColorWidget extends StatefulWidget {
  const RandomColorWidget({super.key});

  @override
  _RandomColorWidgetState createState() => _RandomColorWidgetState();
}

class _RandomColorWidgetState extends State<RandomColorWidget> {
  final List colorList = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.pink,
    Colors.teal,
    Colors.brown,
    Colors.indigo,
  ];

  Color randomColor = Colors.white; // Initial color

  void generateRandomColor() {
    final Random random = Random();
    final int randomIndex = random.nextInt(colorList.length);
    setState(() {
      randomColor = colorList[randomIndex];
      if (kDebugMode) {
        print(randomIndex);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const BackButton(),
              const Gap(50),
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    color: randomColor,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white)),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: generateRandomColor,
                child: const Text('Generate Random Color'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
