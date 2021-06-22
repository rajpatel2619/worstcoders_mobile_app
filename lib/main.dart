import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:worstcoders/providers/dataProvider.dart';
import 'package:worstcoders/providers/themeProvider.dart';
import 'package:worstcoders/screens/contest.dart';
import 'package:worstcoders/screens/home.dart';
import 'package:worstcoders/screens/support.dart';
import 'palette.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        builder: (context, _) {
          final themeProvider = Provider.of<ThemeProvider>(context);

          SystemChrome.setPreferredOrientations([
            DeviceOrientation.portraitUp,
            DeviceOrientation.portraitDown,
          ]);

          return MultiProvider(
            providers: [

              ChangeNotifierProvider<DataProvider>(
                create: (context) => DataProvider(),
              ),

              // ChangeNotifierProvider<CountriesDetailsProvider>(
              //   create: (context) => CountriesDetailsProvider(),
              // ),
            
            ],
            child: MaterialApp(
              title: 'worstcoders',
              themeMode: themeProvider.themeMode,
              theme: MyThemes.lightTheme,
              darkTheme: MyThemes.darkTheme,
              debugShowCheckedModeBanner: false,
              home: AnimatedSplashScreen(
                duration: 2500,
                splash: Image.asset("assets/images/worstcoders_logo.jpg"),
                splashIconSize: 140,
                nextScreen: HomeScreen(),
                splashTransition: SplashTransition.scaleTransition,
                backgroundColor: Palette.white,
              ),
              initialRoute: '/',
              routes: {
                '/home':(context)=> HomeScreen(),
                '/support':(context)=> SupportScreen(),
                '/contest':(context)=> ContestScreen(),
              },
            ),
          );
        },
      );
}