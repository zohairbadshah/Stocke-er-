import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stocker/widgets.dart';
import 'package:crea_radio_button/crea_radio_button.dart';

class GraphPage extends StatefulWidget {
  const GraphPage({Key? key}) : super(key: key);

  @override
  State<GraphPage> createState() => _GraphPageState();
}

class _GraphPageState extends State<GraphPage> {
  String radioButtonInput = "";
  @override
  Widget build(BuildContext context) {
    Color color = Colors.white;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 35, 0, 50),
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.arrow_left,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 90,
                  ),
                  Text(
                    "Stock",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Sono",
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,
                        fontSize: 38),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 285,
                  ),
                  Icon(
                    CupertinoIcons.cloud_upload,
                    color: Colors.black,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 30),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "Tesla Inc",
                        style: TextStyle(
                            fontSize: 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Merriweather",
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "\$ 864.51",
                        style: TextStyle(
                            wordSpacing: -10,
                            color: Colors.black,
                            fontFamily: "Merriweather",
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                            decoration: TextDecoration.none),
                      )
                    ],
                  )
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(75, 0, 0, 0),
                  child: RadioButtonGroup(
                      buttonHeight: 45,
                      buttonWidth: 45,
                      circular: true,
                      mainColor: Color(0xFFE2E6EA),
                      selectedColor: Color(0xFFCFFFD5).withOpacity(0.0041),
                      preSelectedIdx: 0,
                      options: [
                        RadioOption("0", "D"),
                        RadioOption("1", "W"),
                        RadioOption("2", "M"),
                        RadioOption("3", "Y")
                      ],
                      callback: (RadioOption val) {
                        setState(() {
                          radioButtonInput = val.label;
                        });
                      }),
                )
              ],
            ),
            SizedBox(
              height: 0,
            ),
            graph(),
            SizedBox(
              width: 200,
              height: 50,
              child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(15),
                  backgroundColor: MaterialStateProperty.all(Colors.lightBlue),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      side: BorderSide(
                          color: Colors.lightBlueAccent.withOpacity(0.3)),
                    ),
                  ),
                ),
                child: Text(
                  "Buy",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
