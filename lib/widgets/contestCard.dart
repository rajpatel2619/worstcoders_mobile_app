import 'package:flutter/material.dart';

class ContestCard extends StatelessWidget {
  dynamic contest;
  ContestCard(@required this.contest);

  @override
  Widget build(BuildContext context) {
    // time
    // duration
    double num = double.parse(contest["duration"]);
    num=num/3600;
    String dur = num.toString();
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Padding(
        
        padding: EdgeInsets.all(15),
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              contest["name"],
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.deepPurpleAccent,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 8,
            ),
            RichText(
              
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                TextSpan(
                    text: "Status: ",
                    style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.w500)),
                TextSpan(
                    text: (contest["status"]=="CODING")?"Live":"Not Started",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.teal)),
              ]),
            ),
            SizedBox(
              height: 6,
            ),
            RichText(
              
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                TextSpan(
                    text: "Start-Time: ",
                    style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.w500)),
                TextSpan(
                    text: DateTime.parse(contest['start_time']).toLocal().toString(),
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.teal)),
              ]),
            ),
            SizedBox(
              height: 6,
            ),
            RichText(
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                TextSpan(
                    text: "End-Time: ",
                    style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.w500)),
                TextSpan(
                    text: DateTime.parse(contest['end_time']).toLocal().toString(),
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.teal)),
              ]),
            ),
            SizedBox(
              height: 6,
            ),
            RichText(
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                TextSpan(
                    text: "Platform: ",
                    style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.w500)),
                TextSpan(
                    text: contest["site"],
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.teal)),
                TextSpan(
                    text: " | Duration: ",
                    style: TextStyle(
                      fontSize: 17,fontWeight: FontWeight.w500
                    )),
                TextSpan(
                    text:dur + " hr",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.teal)),
                
              ]),
            )
          ],
        ),
      ),
    );
  }
}
