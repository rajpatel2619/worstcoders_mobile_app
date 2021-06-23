
import 'package:flutter/material.dart';
import 'package:worstcoders/widgets/contestMenu.dart';
import 'darkMode.dart';

class MenuDrawer extends StatefulWidget {
  @override
  _MenuDrawerState createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/worstcoders_logo.jpg"),
                fit: BoxFit.cover,
              ),
            ),
           child: Text(""),
          ),
          SizedBox(height: 6,),
          Text(
            "Welcome Ninja !",
            style: TextStyle(color: Colors.blueAccent,fontSize: 22,fontWeight: FontWeight.bold),textAlign:TextAlign.center,
          ),
          SizedBox(height: 4,),
          Divider(),
          ExpansionTile(
          leading: Icon(Icons.computer,color: Colors.teal,),
          title: Text(
            "Contests Category",
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
          ),
          children: <Widget>[
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.33,
              child: ContestMenu())
              ],
            ),
          ],
        ),
         
          Divider(),
          ListTile(
            leading: Icon(Icons.favorite,color: Colors.red,),
            title: Text('Support Us'),
            onTap: () {
              Navigator.of(context).pushNamed('/support');
            },
          ),
          Divider(),
          SizedBox(height: 10),
          ListTile(
            leading: ChangeThemeButtonWidget(),
          ),
        ],
      ),
    );
  }
}
