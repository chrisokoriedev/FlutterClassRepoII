import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

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
        useMaterial3: true,
      ),
      home: const CalculatorView(),
    );
  }
}

class CalculatorView extends StatefulWidget {
  const CalculatorView({super.key});

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  String equation = '', result = '';
  final FocusNode _focusNode = FocusNode();

  void updateCalculatorValue(String buttonText) {
    setState(() {
      if (buttonText == 'C') {
        equation = '';
        result = '';
      } else if (buttonText == '⌫') {
        equation = equation.substring(0, equation.length - 1);
      } else if (buttonText == '=') {
        try {
          Parser parser = Parser();
          Expression expression = parser.parse(equation);
          ContextModel cm = ContextModel(); //create context model
          result = '${expression.evaluate(EvaluationType.REAL, cm)}';
        } catch (error) {
          result = error.toString();
        }
      } else {
        equation += buttonText;
      }
    });
    _focusNode.descendantsAreFocusable;
  }

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
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        TextFormField(
                          focusNode: _focusNode,
                          controller: TextEditingController(text: equation),
                          textAlign: TextAlign.end,
                          readOnly: true,
                          style: const TextStyle(fontSize: 60),
                          onChanged: (newValue) {
                            setState(() {
                              equation = newValue;
                              print(newValue);
                            });
                          },
                        ),
                        // Text(
                        //   equation,
                        //   style: const TextStyle(fontSize: 60),
                        // ),
                        Text(
                          result,
                          style: const TextStyle(fontSize: 30),
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
                          CustomCalculatorButton(
                              buttonText: 'C',
                              press: () => updateCalculatorValue('C')),
                          CustomCalculatorButton(
                              buttonText: '( ',
                              press: () => updateCalculatorValue('()')),
                          CustomCalculatorButton(
                              buttonText: ')',
                              press: () => updateCalculatorValue(')')),
                          CustomCalculatorButton(
                              buttonText: '⌫',
                              buttonTextBackgroundColor: Colors.red,
                              press: () => updateCalculatorValue('⌫')),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomCalculatorButton(
                              buttonText: '7',
                              press: () => updateCalculatorValue('7')),
                          CustomCalculatorButton(
                              buttonText: '8',
                              press: () => updateCalculatorValue('8')),
                          CustomCalculatorButton(
                              buttonText: '9',
                              press: () => updateCalculatorValue('9')),
                          CustomCalculatorButton(
                              buttonText: '*',
                              press: () => updateCalculatorValue('*')),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomCalculatorButton(
                              buttonText: '4',
                              press: () => updateCalculatorValue('4')),
                          CustomCalculatorButton(
                              buttonText: '5',
                              press: () => updateCalculatorValue('5')),
                          CustomCalculatorButton(
                              buttonText: '6',
                              press: () => updateCalculatorValue('6')),
                          CustomCalculatorButton(
                              buttonText: '/',
                              press: () => updateCalculatorValue('/')),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomCalculatorButton(
                              buttonText: '1',
                              press: () => updateCalculatorValue('1')),
                          CustomCalculatorButton(
                              buttonText: '2',
                              press: () => updateCalculatorValue('2')),
                          CustomCalculatorButton(
                              buttonText: '3',
                              press: () => updateCalculatorValue('3')),
                          CustomCalculatorButton(
                              buttonText: '-',
                              press: () => updateCalculatorValue('=')),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomCalculatorButton(
                              buttonText: '.',
                              press: () => updateCalculatorValue('.')),
                          CustomCalculatorButton(
                              buttonText: '0',
                              press: () => updateCalculatorValue('0')),
                          CustomCalculatorButton(
                              buttonText: '=',
                              press: () => updateCalculatorValue('=')),
                          CustomCalculatorButton(
                              buttonText: '+',
                              press: () => updateCalculatorValue('+')),
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
    return GestureDetector(
      onTap: press,
      child: Container(
          width: 80,
          height: 80,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: buttonTextBackgroundColor,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.blueGrey, width: 2.0)),
          child: Text(buttonText,
              style: TextStyle(fontSize: 30, color: buttonTextColor))),
    );
  }
}
