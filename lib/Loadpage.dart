import 'package:flutter/material.dart';
import 'package:stocker/Homepage.dart';
import 'Startpage.dart';

class LoadPage extends StatefulWidget {
  const LoadPage({Key? key}) : super(key: key);

  @override
  State<LoadPage> createState() => _LoadPageState();
}

class _LoadPageState extends State<LoadPage> {
  @protected
  @mustCallSuper
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(seconds: 5), () {});
    Navigator.pushReplacementNamed(
      context,
      '/Start',
    );
  }

  @override
  Widget build(BuildContext context) {
    precacheImage(AssetImage("images/loadpage.jpg"), context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/loadpage.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "STOCKER",
                    style: TextStyle(
                        fontSize: 50,
                        fontFamily: "Merriweather",
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CircularProgressIndicator(
                    color: Colors.white70,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
