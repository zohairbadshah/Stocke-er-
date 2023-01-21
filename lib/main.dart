import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:stocker/Homepage.dart';
import 'package:stocker/Inboxpage.dart';
import 'package:stocker/Loadpage.dart';
import 'package:stocker/Settingspage.dart';
import 'package:stocker/Startpage.dart';
import 'package:stocker/Stockpage.dart';

void main() {
  runApp(stocker());
}

class stocker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/Start':
            return PageTransition(
              child: StartPage(),
              type: PageTransitionType.fade,
              settings: settings,
              reverseDuration: Duration(seconds: 100),
            );
            break;
          case '/Home':
            return PageTransition(
              child: HomePage(),
              type: PageTransitionType.fade,
              settings: settings,
              reverseDuration: Duration(seconds: 10),
            );
            break;

          default:
            return null;
        }
      },
      initialRoute: '/',
      routes: {
        '/': (context) => LoadPage(),
        '/Start': (context) => StartPage(),
        '/Home': (context) => HomePage(),
        '/Stock': (context) => StockPage(),
        '/Inbox': (context) => InboxPage(),
        '/Settings': (context) => SettingsPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
