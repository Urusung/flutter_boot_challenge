import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boot_challenge/screens/select_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: const SelectScreen(),
    ),
  );
}
