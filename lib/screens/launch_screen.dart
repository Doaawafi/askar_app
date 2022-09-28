import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    super.initState();
    //TODO:Navigate to HomeScreen after 3 seconds
    Future.delayed(Duration(seconds: 3),() {
      Navigator.pushNamed(context, '/HomeScreen');
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFADCF9F),
              Color(0xFF76BA99),
            ]
          )
        ),
        child: Text('تطبيق المسبحة',style: GoogleFonts.arefRuqaa(
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),),
      ),
    );
  }
}
