import 'package:cached_network_image/cached_network_image.dart';
import 'package:cocktailapp/util/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final CardSwiperController cardSwiperController = CardSwiperController();
  @override
  Widget build(BuildContext context) {
    List imageList = [
      'https://img.freepik.com/free-photo/cocktail-topped-with-orange-slice_141793-643.jpg?size=626&ext=jpg',
      'https://img.freepik.com/free-photo/cocktail-with-lemon-slices-ice-cubes-mint_141793-581.jpg?size=626&ext=jpg',
      'https://img.freepik.com/free-photo/front-view-blue-cool-lemonade-with-ice-blue-background-fruit-cold-cocktail-drink-color-bar-juice_140725-156766.jpg?size=626&ext=jpg',
    ];
    return SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),

      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Tonight',
                  style: TextStyle(
                      fontSize: 25, fontWeight: FontWeight.w600, height: 2),
                ),
                Text(
                  'Friday, 8, 2023',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Container(
              width: 80,
              height: 120,
              decoration: BoxDecoration(
                  color: AppColors.darkColor,
                  borderRadius: BorderRadius.circular(20)),
              child: const Placeholder(),
            )
          ],
        ),
        const SizedBox(height: 90),
     
        SizedBox(
          width: double.infinity,
          height: 400,
          child: CardSwiper(
            padding: EdgeInsets.zero,
            scale: 0.2,
            isLoop: true,
            controller: cardSwiperController,
            cardsCount: imageList.length,
            cardBuilder: (BuildContext context, int index,
                int horizontalOffsetPercentage, int verticalOffsetPercentage) {
              return Container(
                width: 300,
                height: 450,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: AppColors.lightDarkColor,
                    image: DecorationImage(
                        image: CachedNetworkImageProvider(imageList[index]), fit: BoxFit.cover)),
              );
            },
          ),
        ),
      ]),
    );
  }
}
