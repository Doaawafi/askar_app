import 'package:askar_app/screens/home_screen.dart';
import 'package:askar_app/screens/info_screen.dart';
import 'package:askar_app/screens/launch_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: {
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      },
      supportedLocales: [
        Locale('ar')
      ],
      locale: Locale('en'),




      initialRoute: '/LaunchScreen',
      routes: {
        '/LaunchScreen':(context)=>const LaunchScreen(),
        '/HomeScreen':(context)=>const HomeScreen(),
        '/InfoScreen':(context)=> InfoScreen(),
      },
    );
  }
}
