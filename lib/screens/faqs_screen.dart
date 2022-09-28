import 'package:flutter/material.dart';

class FAQSScreen extends StatelessWidget {
   FAQSScreen({Key? key , this.message}) : super(key: key);
       String? message;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAQS'),

      ),
      body: Center(child: Text(message ?? 'NO Message')),
    );
  }
}
