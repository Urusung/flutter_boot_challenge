import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlutterBootPlusScreen extends StatelessWidget {
  const FlutterBootPlusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.lightBlue,
      ),
      body: const SafeArea(
        child: Center(
          child: Text('FlutterBootPlus Screen'),
        ),
      ),
    );
  }
}
