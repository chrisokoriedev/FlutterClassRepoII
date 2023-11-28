import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RowAndColumn extends StatelessWidget {
  const RowAndColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      color: Colors.white,
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 100,
            color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                FlutterLogo(),
                FlutterLogo(),
                FlutterLogo(),
                FlutterLogo(),
                FlutterLogo(),
                FlutterLogo(),
              ],
            ),
          ),
          // Gap(30),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.end,
          //   children: [
          //     FlutterLogo(),
          //     FlutterLogo(),
          //     FlutterLogo(),
          //     FlutterLogo(),
          //     FlutterLogo(),
          //     FlutterLogo(),
          //   ],
          // ),
          // Gap(30),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   children: [
          //     FlutterLogo(),
          //     FlutterLogo(),
          //     FlutterLogo(),
          //     FlutterLogo(),
          //     FlutterLogo(),
          //     FlutterLogo(),
          //   ],
          // ),
          // Gap(30),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     FlutterLogo(),
          //     FlutterLogo(),
          //     FlutterLogo(),
          //     FlutterLogo(),
          //     FlutterLogo(),
          //     FlutterLogo(),
          //   ],
          // ),
          // Gap(30),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceAround,
          //   children: [
          //     FlutterLogo(),
          //     FlutterLogo(),
          //     FlutterLogo(),
          //     FlutterLogo(),
          //     FlutterLogo(),
          //     FlutterLogo(),
          //   ],
          // ),Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     FlutterLogo(),
          //     FlutterLogo(),
          //     FlutterLogo(),
          //     FlutterLogo(),
          //     FlutterLogo(),
          //     FlutterLogo(),
          //   ],
          // ),
        ],
      ),
    );
  }
}
