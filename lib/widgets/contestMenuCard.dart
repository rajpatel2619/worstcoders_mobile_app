
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:worstcoders/providers/dataProvider.dart';

class ContestMenuCard extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final String url_name;
  final String name;
  // ignore: non_constant_identifier_names
  ContestMenuCard({@required this.url_name, @required this.name});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
          backgroundImage: AssetImage("assets/images/" + url_name + ".png"),
          backgroundColor: Colors.transparent),
      title: Text(name),
      onTap: (){
        Provider.of<DataProvider>(context,listen: false).setActiveContest(name, url_name);
        Navigator.of(context).pushNamed("/contest");
      },
    );
  }
}
