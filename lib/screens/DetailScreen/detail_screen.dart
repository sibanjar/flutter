import 'package:flutter/material.dart';
import 'package:travel_with_me/utilities/colors.dart';

import '../model/place_model.dart';

class DetailScreen extends StatefulWidget {
  final PlaceInfo placeInfo;
  const DetailScreen({Key? key, required this.placeInfo}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kWhiteclr,
        body: Stack(
          children: [
            Image.asset(widget.placeInfo.image,
                width: double.infinity,
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height * 0.5),
            SafeArea(
                child: Column(
              children: [
                /********APPBAR_BUTTON**********/
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Material(
                          elevation: 5,
                          borderRadius: BorderRadius.circular(100),
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  color: kWhiteclr, shape: BoxShape.circle),
                              child: Icon(
                                Icons.arrow_back,
                                color: kBlackclr,
                                size: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(100),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              // boxShadow: [
                              //   BoxShadow(
                              //     color: Colors.black26,
                              //     blurRadius: 6,
                              //   )
                              //]
                            ),
                            child: Icon(
                              Icons.favorite,
                              color: Colors.redAccent,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                ///
                SizedBox(height: MediaQuery.of(context).size.height * 0.3),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: kWhiteclr,
                        borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.placeInfo.name,
                              style: TextStyle(
                                  fontSize: 26, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: kPrimaryClr,
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Text(widget.placeInfo.location,
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 20,
                                    )),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Trip Details",
                              style: TextStyle(
                                  fontSize: 23, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(widget.placeInfo.desc,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                )),
                            Divider(
                              height: 5,
                              color: Colors.black,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text("Duration",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 20,
                                    )),
                                SizedBox(
                                  width: 12,
                                ),
                                Expanded(
                                  child: Text("${widget.placeInfo.days} days",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      )),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Text("Duration",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 20,
                                    )),
                                SizedBox(
                                  width: 12,
                                ),
                                Expanded(
                                  child: Text(
                                      "${widget.placeInfo.distance} kilometers",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      )),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            MaterialButton(
                              color: kPrimaryClr,
                              minWidth: double.infinity,
                              height: 55,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100)),
                              onPressed: () {},
                              child: Text(
                                "Book Trip",
                                style: TextStyle(
                                    color: kWhiteclr,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ))
          ],
        ));
  }
}
