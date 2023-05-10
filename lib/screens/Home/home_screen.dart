import 'package:flutter/material.dart';
import 'package:travel_with_me/screens/DetailScreen/detail_screen.dart';
import 'package:travel_with_me/screens/Home/widgets/category_card.dart';
//import 'package:travel_with_me/screens/Home/widgets/home_nav_bar.dart';
import 'package:travel_with_me/screens/Home/widgets/recommended_card.dart';
import 'package:travel_with_me/screens/model/temple_model.dart';

import 'package:travel_with_me/utilities/colors.dart';

import '../model/place_model.dart';
import 'package:travel_with_me/screens/Home/widgets/bottom_nav.dart';
import 'package:travel_with_me/Animations/FadeAnimation.dart';
import 'package:travel_with_me/connection/sqldb_conn.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kWhiteclr,
      bottomNavigationBar:bottom_nav(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                /*******APP_BAR********/
                Row(
                  children: [
                    Center(
                      child: CircleAvatar(
                        radius: 27,
                        backgroundImage: AssetImage("assets/icons/alexa.png"),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    RichText(
                        text: TextSpan(
                            text: "Hello",
                            style: TextStyle(color: kBlackclr, fontSize: 18),
                            children: [
                          TextSpan(
                              text: ", mazafaza",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18))
                        ]))
                  ],
                ),

                /**********SEARCH_SECTION**********/
                SizedBox(
                  height: 15,
                ),
                FadeAnimation(
                    Text(
                    "Explore new destination",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                FadeAnimation(
                 Container(
                    height: 300,
                   decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                    image: AssetImage('assets/images/forests.jpeg'),
                    fit: BoxFit.cover
                  ),
                              ),
                   /*  child: Material(
                      borderRadius: BorderRadius.circular(100),
                      elevation: 5,
                      child: Container(
                        decoration: BoxDecoration(
                            color: kWhiteclr,
                            borderRadius: BorderRadius.circular(100)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText: "Search your destination",
                                      prefixIcon: Icon(Icons.search),
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none),
                                ),
                              ),
                              CircleAvatar(
                                radius: 22,
                                backgroundColor: kPrimaryClr,
                                child: Icon(
                                  Icons.sort_by_alpha_sharp,
                                  color: kWhiteclr,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ), */
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text("What you would like to find?", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),
                      SizedBox(height: 30,),
                       Container(
                        padding: EdgeInsets.symmetric(vertical: 3),
                        margin: EdgeInsets.symmetric(horizontal: 40),
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search, color: Colors.grey,),
                            hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                            hintText: "Search for cities, places ..."
                          ),
                        ),
                      ),
                      SizedBox(height: 30,)
                    ],
                  ),
                              ),
                ),
            
                

                /***************CATEGORY***********/
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Category",
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 60,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          CategoryCard(
                            press: () {
                              Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => insertindb()));
                            },
                            image: "assets/images/mountains.jpeg",
                            title: "Mountains",
                          ),
                          CategoryCard(
                            press: () {},
                            image: "assets/images/forests.jpeg",
                            title: "Forests",
                          ),
                          CategoryCard(
                            press: () {},
                            image: "assets/images/sea.webp",
                            title: "Sea",
                          ),
                          CategoryCard(
                            press: () {},
                            image: "assets/images/deserts.jpeg",
                            title: "Deserts",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
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

                /********RECOMMENDED****************/
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Recommendation",
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
