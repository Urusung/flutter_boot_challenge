import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boot_challenge/screens/flutter_boot_plus_screen.dart';

class SelectScreen extends StatelessWidget {
  const SelectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Screen'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              FilledButton(
                onPressed: () {
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                      builder: (context) => const FlutterBootPlusScreen(),
                    ),
                  );
                },
                child: const Text('FlutterBootPlus'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
