import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class GridViewClass extends StatelessWidget {
  const GridViewClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            /// Builds a grid of CustomGridUserDetailWidget using GridView.count.
            ///
            /// The grid has a fixed crossAxisCount of 2, with crossAxisSpacing and
            /// mainAxisSpacing between items. The grid is not scrollable.
            ///
            /// The children are generated from the userDataDetails list, passing each item
            /// to a CustomGridUserDetailWidget.
            const Text('GridView.count'),
            const Gap(10),

            GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                childAspectRatio: 0.8,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 15.0,
                shrinkWrap: true,
                children: List.generate(
                    userDataDetails.length,
                    (index) => CustomGridUserDetailWidget(
                        userdataItem: userDataDetails[index]))),

            const Gap(30),

            /// Builds a scrollable grid of images using GridView.builder.
            ///
            /// The grid has a fixed cross axis count of 2, with crossAxisSpacing
            /// and mainAxisSpacing between items.
            ///
            /// The itemBuilder callback displays an Image.network for each image URL,
            /// and shows a full screen view of the image when tapped using showModalBottomSheet.
            const Text('GridView.builder'),
            const Gap(10),

            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: imageUrlList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) => GestureDetector(
                  onTap: () => showModalBottomSheet(
                      context: context,
                      builder: (context) => FullScreenImageView(
                            image: imageUrlList[index],
                          )),
                  child: Image.network(imageUrlList[index])),
            ),
            const Gap(30),
            const Text('GridView.extent'),
            const Gap(10),
            GridView.extent(
              maxCrossAxisExtent: 200,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.yellow,
                  child: const Text('First', style: TextStyle(fontSize: 20)),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.blue,
                  child: const Text('Second', style: TextStyle(fontSize: 20)),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.blue,
                  child: const Text('Third', style: TextStyle(fontSize: 20)),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.yellow,
                  child: const Text('Four', style: TextStyle(fontSize: 20)),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.yellow,
                  child: const Text('Fifth', style: TextStyle(fontSize: 20)),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.blue,
                  child: const Text('Six', style: TextStyle(fontSize: 20)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class FullScreenImageView extends StatelessWidget {
  final String image;
  const FullScreenImageView({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: double.infinity, child: Image.network(image));
  }
}

class CustomGridUserDetailWidget extends StatelessWidget {
  final UserData userdataItem;
  const CustomGridUserDetailWidget({super.key, required this.userdataItem});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Card(
      elevation: 5.0,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              userdataItem.gender == 'M'
                  ? Icons.person_4_sharp
                  : Icons.person_3,
              color: userdataItem.gender == 'M' ? Colors.blue : Colors.pink,
              size: 50,
            ),
            Text(
              userdataItem.fullname,
              style: textStyle.titleLarge,
            ),
            const Gap(5),
            Text(
              userdataItem.email,
              style: textStyle.titleMedium,
            ),
            const Gap(8),
            Text(
              userdataItem.age.toString(),
              style: textStyle.titleSmall,
            ),
            const Gap(8),
            Text(
              userdataItem.jobTitle,
              style: textStyle.titleLarge,
            ),
            const Gap(8),
          ],
        ),
      ),
    );
  }
}

class UserData {
  final String fullname;
  final String email;
  final int age;
  final String gender;
  final String jobTitle;

  UserData(
      {required this.fullname,
      required this.email,
      required this.age,
      required this.gender,
      required this.jobTitle});
}

List<UserData> userDataDetails = [
  UserData(
      fullname: 'Okorie Christian',
      email: 'okoriec01@gmail.com',
      age: 22,
      gender: 'M',
      jobTitle: 'Software developer'),
  UserData(
      fullname: 'Adenike Adeyinka',
      email: 'adeyinkaadenike992@gmail.com',
      age: 18,
      gender: 'F',
      jobTitle: 'Software developer'),
  UserData(
      fullname: 'Blessing James',
      email: 'jamesBlessing@gmail.com',
      age: 19,
      gender: 'F',
      jobTitle: 'Software developer'),
  UserData(
      fullname: 'Adebola Wisdom',
      email: 'wisdomAdebola@gmail.com',
      age: 20,
      gender: 'M',
      jobTitle: 'Software developer'),
];

List<String> imageUrlList = [
  'https://images.pexels.com/photos/306864/pexels-photo-306864.jpeg?auto=compress&cs=tinysrgb&w=1600',
  'https://images.pexels.com/photos/674723/pexels-photo-674723.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  'https://images.pexels.com/photos/872498/pexels-photo-872498.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  'https://images.pexels.com/photos/3750709/pexels-photo-3750709.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
];
