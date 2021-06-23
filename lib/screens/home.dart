import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:worstcoders/providers/dataProvider.dart';
import 'package:worstcoders/widgets/contestCard.dart';
import 'package:worstcoders/widgets/drawer.dart';
import 'package:worstcoders/widgets/loading.dart';
import '../palette.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isSwitched = false;
  @override
  void initState() {
    super.initState();
    Provider.of<DataProvider>(context, listen: false).fetchData();
  }

  @override
  Widget build(BuildContext context) {
   
    var dp = Provider.of<DataProvider>(context);
    if (dp.selectedData.isEmpty)
      return Scaffold(
        appBar: AppBar(
          title: Text(
            "Worstcoders - All Contests",
          ),
          centerTitle: true,
          
        ),
        drawer: MenuDrawer(),
        body: Center(
          child: Loading(),
        ),
      );
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Worstcoders - All Contests",
          ),
          centerTitle: true,
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
      drawer: MenuDrawer(),
      body: SingleChildScrollView(
        child: ListView.builder(
          primary: false,
          itemCount: dp.selectedData.length,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return ContestCard(dp.selectedData[index]);
          },
        ),
      ),
    );
  }
}
