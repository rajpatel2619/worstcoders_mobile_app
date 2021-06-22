import 'package:flutter/material.dart';
import '../palette.dart';
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                 "Welcome Ninja !",
                  style: TextStyle(
                    fontSize: 20,
                    color: Palette.primary,
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
           ListTile(
            leading: Icon(Icons.home),
            title: Text(
              'Home'
            ),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/home');
            },
          ),
       
         
          Divider(),
          ListTile(
            leading: Icon(Icons.home),
            title: Text(
              'AtCoder'
            ),
            onTap: () {
              Navigator.of(context).pushNamed('/contest');
            },
          ),
       
         
            ListTile(
            leading: Icon(Icons.home),
            title: Text(
              'Codechef'
            ),
            onTap: () {
              Navigator.of(context).pushNamed('/contest');
            },
          ),
            ListTile(
            leading: Icon(Icons.home),
            title: Text(
              'Codeforces'
            ),
            onTap: () {
              Navigator.of(context).pushNamed('/contest');
            },
          ),
       
       
          Divider(),

           ListTile(
            leading: Icon(Icons.home),
            title: Text(
              'Support Us'
            ),
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