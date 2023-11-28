import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CalculatorView(),
    );
  }
}

class CalculatorView extends StatelessWidget {
  const CalculatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 4,
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '0',
                          style: TextStyle(fontSize: 60),
                        ),
                        Text(
                          '0',
                          style: TextStyle(fontSize: 60),
                        ),
                      ]),
                )),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: const Divider(
                thickness: 1,
                color: Colors.blueGrey,
              ),
            ),
            Expanded(
                flex: 8,
                child: Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomCalculatorButton(buttonText: '7', press: () {}),
                          CustomCalculatorButton(buttonText: '8', press: () {}),
                          CustomCalculatorButton(buttonText: '9', press: () {}),
                          CustomCalculatorButton(buttonText: '*', press: () {}),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomCalculatorButton(buttonText: '4', press: () {}),
                          CustomCalculatorButton(buttonText: '5', press: () {}),
                          CustomCalculatorButton(buttonText: '6', press: () {}),
                          CustomCalculatorButton(buttonText: '/', press: () {}),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomCalculatorButton(buttonText: '1', press: () {}),
                          CustomCalculatorButton(buttonText: '2', press: () {}),
                          CustomCalculatorButton(buttonText: '3', press: () {}),
                          CustomCalculatorButton(buttonText: '-', press: () {}),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomCalculatorButton(buttonText: '.', press: () {}),
                          CustomCalculatorButton(buttonText: '0', press: () {}),
                          CustomCalculatorButton(buttonText: '=', press: () {}),
                          CustomCalculatorButton(buttonText: '+', press: () {}),
                        ],
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

class CustomCalculatorButton extends StatelessWidget {
  final String buttonText;
  final Color? buttonTextColor;
  final Color? buttonTextBackgroundColor;
  final VoidCallback press;
  const CustomCalculatorButton({
    super.key,
    required this.buttonText,
    this.buttonTextColor = Colors.white,
    this.buttonTextBackgroundColor = Colors.black26,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 80,
        height: 80,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: buttonTextBackgroundColor,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.blueGrey, width: 2.0)),
        child: Text(buttonText,
            style: TextStyle(fontSize: 30, color: buttonTextColor)));
  }
}
