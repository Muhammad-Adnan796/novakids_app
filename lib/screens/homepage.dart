import 'dart:async';

import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:novakid_app/auth_screens/Allcolors.dart';
import 'package:novakid_app/bottom_nav.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int hour = DateTime.now().hour;
  int minute = DateTime.now().minute;
  int second = DateTime.now().second;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        hour = DateTime.now().hour;
        minute = DateTime.now().minute;
        second = DateTime.now().second;
      });
    });

    return Scaffold(
      bottomNavigationBar: BottomNav(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: SvgPicture.asset(
          "images/home_novakid_logo.svg",
          color: Colors.black,
          height: height * 0.034,
          width: width * 0.3,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/userdetailpage");
              },
              child: CircleAvatar(
                minRadius: 17,
                backgroundColor: AllColorsClass.homeappbarcirclecolor,
                child: Text(
                  "R-",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              hour.toString() +
                  " :  " +
                  minute.toString() +
                  " : " +
                  second.toString(),
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 30),
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          FadedSlideAnimation(
            beginOffset: Offset(0, 0),
            endOffset: Offset(0, 0),
            fadeDuration: Duration(seconds: 1),
            child: Image.asset(
              "images/video_image.jpg",
              height: height * 0.28,
              width: width,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Container(
            height: height * 0.01,
            width: width,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.2),
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.info,
                  color: Colors.yellow,
                  size: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: RichText(
                  text: TextSpan(
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      text: "NOTE: ",
                      children: [
                        TextSpan(
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                            text:
                                "All the collected materials are\nprivately and safely stored"),
                      ]),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
                "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their "),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 17),
            child: Text(
              "ok, got it!",
              style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Container(
            height: height * 0.002,
            width: width,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.2),
            ),
          ),
        ],
      ),
    );
  }
}
