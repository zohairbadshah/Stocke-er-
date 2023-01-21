import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:stocker/Homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:stocker/widgets.dart';
import 'Inboxpage.dart';
import 'Stockpage.dart';
import 'global_var.dart';
class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  @override
  Widget build(BuildContext context) {
    globals.current = 3;
    return Scaffold(bottomNavigationBar: Navigate(3, context));
  }
}
