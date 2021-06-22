import 'package:flutter/material.dart';
import 'package:worstcoders/widgets/drawer.dart';
class SupportScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: MenuDrawer(),
      body: Container(child: Text("support"),),
    );
  }
}