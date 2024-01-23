import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHighScoreScreen extends StatefulWidget {
  const MyHighScoreScreen({super.key});

  @override
  State<MyHighScoreScreen> createState() => _MyHighScoreScreenState();
}

class _MyHighScoreScreenState extends State<MyHighScoreScreen> {
  int yourScore = 0;
  double containerHeight = 0;

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(milliseconds: 100), (timer) {
      setState(() {
        print('Container Height: $containerHeight');
        containerHeight -= 100;
        if (containerHeight <= 0) {
          containerHeight = 0;
          yourScore = 0;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 24, right: 16, left: 16, bottom: 16),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Your score',
                  style: TextStyle(fontSize: 32),
                ),
                const SizedBox(height: 16),
                Text(
                  '$yourScore',
                  style: const TextStyle(
                      fontSize: 42, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Container(
                width: 40,
                height: 420,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 100),
                width: 40,
                height: containerHeight,
                decoration: const BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                containerHeight = containerHeight + 140;
                print('Container Height: $containerHeight');
                if (containerHeight >= 420) {
                  containerHeight = 420;
                  yourScore = yourScore += 1;
                }
              });
            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
