import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:stocker/Inboxpage.dart';
import 'package:stocker/global_var.dart';
import 'package:stocker/widgets.dart';

import 'Homepage.dart';
import 'Settingspage.dart';

class StockPage extends StatefulWidget {
  const StockPage({Key? key}) : super(key: key);

  @override
  State<StockPage> createState() => _StockPageState();
}

class _StockPageState extends State<StockPage> {
  @override
  Widget build(BuildContext context) {
    globals.current=1;
    return Scaffold(
        body: Text("Hello"), bottomNavigationBar: Navigate(1, context));
  }
}
