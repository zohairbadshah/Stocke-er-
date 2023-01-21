import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:countup/countup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets.dart';
import 'global_var.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page();
  }
}

class Page extends StatefulWidget {
  const Page({Key? key}) : super(key: key);

  @override
  State<Page> createState() => _PageState();
}

class _PageState extends State<Page> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    const cutOffYValue = 0.0;
    const yearTextStyle = TextStyle(fontSize: 12, color: Colors.black);
    double Balance = 18230;
    globals.current = 0;

    return Scaffold(
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 20, 0, 10),
              child: Row(
                children: [
                  Avatar(image: 'z'),
                  SizedBox(
                    width: 2,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AnimatedTextKit(
                        animatedTexts: [
                          TypewriterAnimatedText("Hello Zohair",
                              textStyle: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 20,
                                fontFamily: "Merriweather",
                                color: Colors.black,
                              ),
                              speed: Duration(milliseconds: 300)),
                        ],
                        totalRepeatCount: 1,
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      AnimatedTextKit(
                        animatedTexts: [
                          TypewriterAnimatedText(
                            "Good Day!",
                            textStyle: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 15,
                                fontFamily: "Sono",
                                color: Colors.black.withOpacity(0.6)),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width - 300),
                  TextButton(
                      onPressed: () {
                        print("pressed");
                      },
                      child: Icon(
                        CupertinoIcons.bell,
                        color: Colors.black,
                      ))
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 20, 0, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Balance",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.black.withOpacity(0.9),
                            fontFamily: "Sono",
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Countup(
                        begin: 0,
                        end: Balance,
                        duration: Duration(seconds: 3),
                        separator: ',',
                        style: TextStyle(
                          letterSpacing: -1.5,
                          wordSpacing: 5,
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontFamily: "Rubik",
                          fontSize: 35,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 245,
                ),
                SizedBox(
                  width: 80,
                  height: 35,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Top up",
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.9), fontSize: 15),
                    ),
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(15),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.lightBlue),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          side: BorderSide(color: Colors.blue),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(23, 0, 24, 30),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                elevation: 10,
                color: Color(0xFFDDFFF0).withOpacity(0.5),
                child: Column(
                  //main column
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 10, 0, 4),
                              child: Text(
                                "Plan \"Only Forward\"",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Inter"),
                              ),
                            ),
                            Text(
                              "12 Investation",
                              style: TextStyle(
                                  color: Colors.white30.withOpacity(0.4),
                                  fontSize: 15,
                                  fontFamily: "Merriweather"),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 312,
                        ),
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.green.withOpacity(0.3),
                          child: TextButton(
                            onPressed: () {},
                            child: Icon(
                              CupertinoIcons.square_arrow_up_on_square,
                              size: 15,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Invested",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Countup(
                              begin: 0,
                              end: 24118,
                              duration: Duration(seconds: 3),
                              separator: ',',
                              style: TextStyle(
                                letterSpacing: 0,
                                wordSpacing: 0,
                                decoration: TextDecoration.none,
                                color: Colors.black,
                                fontFamily: "Sono",
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "Profit(%)",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Countup(
                              begin: 0,
                              end: 5.12,
                              duration: Duration(seconds: 3),
                              separator: ',',
                              style: TextStyle(
                                letterSpacing: 0,
                                wordSpacing: 5,
                                decoration: TextDecoration.none,
                                color: Colors.green.withOpacity(0.9),
                                fontFamily: "Sono",
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "Profit(\$)",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Countup(
                              begin: 0,
                              end: 1234,
                              duration: Duration(seconds: 3),
                              separator: ',',
                              style: TextStyle(
                                letterSpacing: 0,
                                wordSpacing: 2,
                                decoration: TextDecoration.none,
                                color: Colors.green.withOpacity(0.9),
                                fontFamily: "Sono",
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 18,
                    )
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(28, 0, 0, 0),
                  child: Text(
                    "Watchlist",
                    style: TextStyle(
                      fontFamily: "Sono",
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 27,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 255,
                ),
                TextButton(
                  onPressed: () {
                    print("pressed");
                  },
                  child: Text(
                    "See All",
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 16,
                        wordSpacing: 0,
                        fontFamily: "Merriweather",
                        color: Colors.black12.withOpacity(0.08)),
                  ),
                )
              ],
            ),
            SingleChildScrollView(
                child: Column(
              children: [
                SepContainers("Equifax", 1234),
                SepContainers("ASML Holding", 1429.12),
                SepContainers("Tesla Inc", 864.51),
                SepContainers("Tyler Technologies TYL", 221.39),
                SepContainers("AAPL", 1000.88),
                SepContainers("Meta", 500.68),
                SepContainers("Equifax", 975.68),
                SepContainers("Equifax", 975.68),
                SepContainers("Equifax", 975.68),
                SepContainers("Equifax", 975.68),
                SepContainers("Equifax", 975.68),
                SepContainers("Equifax", 975.68),
                SepContainers("Equifax", 975.68),
              ],
            ))
          ],
        ),
      ),
      bottomNavigationBar: Navigate(0, context),
    );
  }
}
