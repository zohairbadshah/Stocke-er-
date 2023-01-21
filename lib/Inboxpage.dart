import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:stocker/Homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:stocker/widgets.dart';
import 'Settingspage.dart';
import 'Stockpage.dart';
import 'global_var.dart';
class InboxPage extends StatefulWidget {
  const InboxPage({Key? key}) : super(key: key);

  @override
  State<InboxPage> createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage> {

  @override
  Widget build(BuildContext context) {
    globals.current=2;
    return Scaffold(bottomNavigationBar: Navigate(2, context));
  }
}
