import 'package:flutter/material.dart';
import 'package:travel_with_me/screens/model/temple_model.dart';

  class bottom_nav extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return   Container(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(1,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                       onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => temple_model()));
                       // print('double pressed');
                      },
                    child: Image.asset(
                      "assets/icons/user.png",
                      height: 30,
                      width: 30,
                    ),
                  ),
                  InkWell(
                       onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => temple_model()));
                       // print('double pressed');
                      },
                    child: Image.asset(
                      "assets/icons/fav.png",
                      height: 30,
                      width: 30,
                    ),
                  ),
                  InkWell(
                       onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => temple_model()));
                       // print('double pressed');
                      },
                    child: Image.asset(
                      "assets/icons/home.png",
                      height: 30,
                      width: 30,
                    ),
                  ),
                  InkWell(
                       onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => temple_model()));
                       // print('double pressed');
                      },
                    child: Image.asset(
                      "assets/icons/location.png",
                      height: 30,
                      width: 30,
                    ),
                  ),
                  InkWell(
                       onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => temple_model()));
                       // print('double pressed');
                      },
                    child: Image.asset(
                      "assets/icons/user.png",
                      height: 30,
                      width: 30,
                    ),
                  ),
                  InkWell(
                       onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => temple_model()));
                       // print('double pressed');
                      },
                    child: Image.asset(
                      "assets/icons/list.png",
                      height: 30,
                      width: 30,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
}

  }
