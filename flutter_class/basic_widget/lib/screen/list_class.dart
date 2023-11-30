import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FlutterListClass extends StatefulWidget {
  const FlutterListClass({super.key});

  @override
  State<FlutterListClass> createState() => _FlutterListClassState();
}

class _FlutterListClassState extends State<FlutterListClass> {
  final List<String> products =
      List<String>.generate(500, (i) => "Product List: $i");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            //List view
            SizedBox(
              height: 300,
              child: ListView(
                children: const [
                  ListTile(
                    leading: Icon(Icons.map),
                    title: Text('Map'),
                  ),
                  ListTile(
                    leading: Icon(Icons.photo_album),
                    title: Text('Album'),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone),
                    title: Text('Phone'),
                  ),
                  ListTile(
                    leading: Icon(Icons.contacts),
                    title: Text('Contact'),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Setting'),
                  ),
                ],
              ),
            ),
            //Custom List builder on a row
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: products
                        .map((e) => Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Text(e)))
                        .toList())),

            const Gap(30),
            //Listview.builder
            SizedBox(
              height: 300,
              child: ListView.builder(
                shrinkWrap: true,
                reverse: true,
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return ListTile(title: Text(products[index]));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
