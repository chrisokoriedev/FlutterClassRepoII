import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class GridViewClass extends StatelessWidget {
  const GridViewClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 0.8,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 15.0,
              shrinkWrap: true,
              children: List.generate(
                  userDataDetails.length,
                  (index) => CustomGridUserDetailWidget(
                      userdataItem: userDataDetails[index])),
            ),
          ],
        ),
      ),
    );
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
