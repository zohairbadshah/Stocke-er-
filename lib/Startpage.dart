import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:stocker/Homepage.dart';
import 'package:stocker/Loadpage.dart';
import 'package:stocker/Stockpage.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Column(
        children: [
          Image.asset("images/icon.jpg"),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: Text(
                "All In One \n Crypto and Stocks \n Investment Tool",
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    decoration: TextDecoration.none,
                    fontFamily: 'Merriweather'),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "MAKING INVESTING EASIER ON\n STOCKER JUST FOR YOU",
              style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 15,
                  color: Colors.white54,
                  fontFamily: "Sono"),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                PageTransition(
                  child: HomePage(),
                  type: PageTransitionType.bottomToTop,
                  duration: Duration(milliseconds: 1000),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 5, 30, 5),
              child: Text("Let's Start"),
            ),
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              )),
              backgroundColor: MaterialStateProperty.all(Color(0xFF6FA8EB)),
              foregroundColor: MaterialStateProperty.all(Colors.black),
              textStyle: MaterialStatePropertyAll(
                TextStyle(fontFamily: "Merriweather", fontSize: 15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
