import 'package:flutter/material.dart';
import '../model/place_model.dart';
import 'package:travel_with_me/screens/Home/widgets/category_card.dart';
import 'package:travel_with_me/screens/Home/widgets/home_nav_bar.dart';
import 'package:travel_with_me/screens/Home/widgets/recommended_card.dart';
import 'package:travel_with_me/screens/DetailScreen/detail_screen.dart';



class temple_model extends StatelessWidget {
  const temple_model({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Container(
                        height: 300,
                        child: ListView.builder(
                            itemCount: places.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(left: 5, right: 15),
                                child: Row(
                                  children: [
                                    RecommendedCard(
                                      placeInfo: places[index],
                                      press: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => DetailScreen(
                                                    placeInfo: places[index])));
                                      },
                                    )
                                  ],
                                ),
                              );
                            })),
      ),
    );
  }
}
 