import 'package:flutter/material.dart';
import 'package:travel_with_me/screens/Home/home_screen.dart';
import 'package:travel_with_me/utilities/colors.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/welcome.jpeg",
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          SafeArea(
            child: Center(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(),
                    Text(
                      "Welcome",
                      style: TextStyle(
                          fontSize: 30,
                          color: kWhiteclr,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Unleash the adventurer inside youand discover the best kept hidden secret of Bhaktapur.!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: kWhiteclr,
                          fontSize: 16,
                          height: 1.6,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 15,
                    ),

                    /********LOGIN BUTTONS**********/
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                      },
                      child: Container(
                        height: 55,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: kWhiteclr,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/icons/google.png",
                              height: 30,
                              width: 30,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Continue with Google",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                      },
                      child: Container(
                        height: 55,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: kWhiteclr,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/icons/facebook.png",
                              height: 30,
                              width: 30,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Continue with Facebook",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.06,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
