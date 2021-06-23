import 'package:flutter/material.dart';

class ContestMenuCard extends StatelessWidget {
  final String url_name;
  final String name;
  ContestMenuCard({@required this.url_name,@required this.name});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:CircleAvatar(child: Image.asset("assets/images/"+url_name+".png")),
      title: Text(name),
    );
  }
}