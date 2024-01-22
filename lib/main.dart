import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boot_challenge/screens/flutter_boot_plus_screen.dart';
import 'package:flutter_boot_challenge/screens/my_cute_gpt_screen.dart';
import 'package:flutter_boot_challenge/screens/select_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCuteGPTScreen(),
    ),
  );
}
