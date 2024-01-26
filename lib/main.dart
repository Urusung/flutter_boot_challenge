import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boot_challenge/screens/flutter_boot_plus_screen.dart';
import 'package:flutter_boot_challenge/screens/hello_layout_screen.dart';
import 'package:flutter_boot_challenge/screens/hello_list_view_screen.dart';
import 'package:flutter_boot_challenge/screens/my_cute_gpt_screen.dart';
import 'package:flutter_boot_challenge/screens/my_high_score_screen.dart';
import 'package:flutter_boot_challenge/screens/my_slack_avatar_screen.dart';
import 'package:flutter_boot_challenge/screens/select_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HelloListViewScreen(),
    ),
  );
}
