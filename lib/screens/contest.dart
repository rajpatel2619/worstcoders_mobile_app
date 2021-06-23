import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:worstcoders/providers/dataProvider.dart';
import 'package:worstcoders/widgets/contestCard.dart';
import 'package:worstcoders/widgets/loading.dart';
import '../palette.dart';

class ContestScreen extends StatefulWidget {
  @override
  _ContestScreenState createState() => _ContestScreenState();
}

class _ContestScreenState extends State<ContestScreen> {
  bool isSwitched=false;

  @override
  Widget build(BuildContext context) {
    var dp = Provider.of<DataProvider>(context);
    if(dp.selectedData.isEmpty) return Scaffold(
      appBar: AppBar(title: Text(dp.ActiveContestName()+" Contests"),centerTitle:true,
      actions: [
            Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                        Provider.of<DataProvider>(context,
                                listen: false)
                            .toggleStatus();
                      });
                    },
                    activeTrackColor: Colors.deepPurpleAccent,
                    activeColor: Palette.primary,
                  ),
          ],
      ),
      
      body: Center(child: 
      Loading()
      // Text("No Contests Available",style: TextStyle(color: Colors.teal,fontSize: 30,fontWeight: FontWeight.w700),),
      ),
    ); 
    String name = dp.ActiveContestName() =="All Contests"?" ":" Contests";
    return Scaffold(
      appBar: AppBar(title: Text(dp.ActiveContestName()+name),centerTitle:true,
      actions: [
            Row(
              children: [
                Switch(
                        value: isSwitched,
                        onChanged: (value) {
                          setState(() {
                            isSwitched = value;
                            Provider.of<DataProvider>(context,
                                    listen: false)
                                .toggleStatus();
                          });
                        },
                        activeTrackColor: Colors.deepPurpleAccent,
                        activeColor: Palette.primary,
                      ),
                      
                      // Text("Live")
              ],
            ),
                  
          ],
      ),
      
      body: SingleChildScrollView(
        child: ListView.builder(
        primary: false,
        itemCount: dp.selectedData.length,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemBuilder: (context,index){
          return ContestCard(dp.selectedData[index]);
        },
      ),
      ),
    );
  }
}