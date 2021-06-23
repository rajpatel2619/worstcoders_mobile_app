import 'package:flutter/material.dart';
import 'package:worstcoders/widgets/contestMenuCard.dart';


class ContestMenu extends StatelessWidget {
  final List contests = [
    ["all","All Contests"],
    ["at_coder","AtCoder"],
    ["code_chef","CodeChef"],
    ["codeforces","CodeForces"],
    ["cs_academy","CS Academy"],
    ["hacker_rank","HackerRank"],
    ["hacker_earth","HackerEarth"],
    ["kick_start","Kick Start"],
    ["leet_code","LeetCode"],
    ["top_coder","TopCoder"],
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView.builder(
        primary: false,
        itemCount: contests.length,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemBuilder: (context,index){
          return ContestMenuCard(url_name:contests[index][0],name: contests[index][1]);
        },
      ),
    );
  }
}

