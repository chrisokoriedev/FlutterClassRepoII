import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BasicWidget extends StatelessWidget {
  const BasicWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 200,
              height: 80,
              alignment: Alignment.center,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [Icon(Icons.phone), Text('Call')],
                      ),
                      Column(
                        children: [Icon(Icons.map), Text('Route')],
                      ),
                      Column(
                        children: [Icon(Icons.share), Text('Share')],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.all(15.0),
                color: Colors.blue,
                width: 42.0,
                height: 42.0,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  color: Colors.amber,
                  padding: const EdgeInsets.all(14.0),
                  child: const Text('Hello JavaTpoint!'),
                ),
                Container(
                  color: Colors.blue,
                  padding: const EdgeInsets.only(top: 20, right: 10),
                  child: const Text('Hello JavaTpoint!'),
                ),
                Container(
                  color: Colors.blue,
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  child: const Text('Hello JavaTpoint!'),
                ),
              ],
            ),
            Center(
              child: Container(
                height: 110.0,
                width: 110.0,
                alignment: Alignment.bottomLeft,
                color: Colors.blue,
                child: const FlutterLogo(
                  size: 50,
                ),
              ),
            ),
            Container(
              width: 300.0,
              height: 250.0,
              child: const Card(child: Text('Hello JavaTpoint!')),
            ),
            // AspectRatio(
            //   aspectRatio: 5 / 3,
            //   child: Container(
            //     color: Colors.blue,
            //   ),
            // ),
            // Baseline(
            //   baseline: 5.0,
            //   baselineType: TextBaseline.ideographic,
            //   child: Container(
            //     height: 60,
            //     width: 50,
            //     color: Colors.red,
            //   ),
            // ),
            // Container(
            //   height: 50.0,
            //   width: 50.0,
            //   color: Colors.red,
            //   child: OverflowBox(
            //     minHeight: 70.0,
            //     minWidth: 70.0,
            //     child: Container(
            //       height: 50.0,
            //       width: 50.0,
            //       color: Colors.blue,
            //     ),
            //   ),
            // ),
            const Gap(20),

            Center(
              child: Container(
                alignment: Alignment.center,
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.red, border: Border.all(color: Colors.black)),
                child: const Row(
                  children: <Widget>[
                    Expanded(
                      child: Text('Peter', textAlign: TextAlign.center),
                    ),
                    Expanded(
                      child: Text('John', textAlign: TextAlign.center),
                    ),
                    Expanded(
                      child: FittedBox(
                        fit: BoxFit.contain, // otherwise the logo will be tiny
                        child: FlutterLogo(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Gap(20),
            Stack(
              children: [
                // Max Size
                Container(
                  width: double.infinity,
                  height: 400,
                  color: Colors.blue,
                ),
                Container(
                  color: Colors.pink,
                  height: 300.0,
                  width: 300.0,
                ),
                Container(
                  color: Colors.yellow,
                  height: 220.0,
                  width: 200.0,
                ),
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}
