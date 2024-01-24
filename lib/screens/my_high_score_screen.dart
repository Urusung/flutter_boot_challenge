import 'dart:async';
import 'package:flutter/material.dart';

class MyHighScoreScreen extends StatefulWidget {
  const MyHighScoreScreen({Key? key}) : super(key: key);

  @override
  State<MyHighScoreScreen> createState() => _MyHighScoreScreenState();
}

class _MyHighScoreScreenState extends State<MyHighScoreScreen> {
  int score = 0;
  double gaugeHeight = 0;
  final double gaugeMaxHeight = 420;
  late Timer? decreaseTimer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    stopTimer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Column(
              children: [
                const Text('Your score'),
                Text(
                  '$score',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const Spacer(),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Container(
                            width: 50,
                            height: gaugeMaxHeight,
                            decoration: BoxDecoration(
                              color: Colors.deepPurple.shade100,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(24),
                                topRight: Radius.circular(24),
                              ),
                            ),
                          ),
                          Container(
                            width: 50,
                            height: gaugeHeight,
                            decoration: const BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(24),
                                topRight: Radius.circular(24),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        width: 50,
                        height: 50,
                        child: FloatingActionButton(
                          onPressed: increase,
                          child: const Text(
                            '+',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  startTimer() {
    decreaseTimer = Timer.periodic(const Duration(milliseconds: 10), (timer) {
      setState(() {
        gaugeHeight -= 4.2;
      });

      if (gaugeHeight <= 0) {
        gaugeHeight = 0;

        if (score != 0) {
          setState(() {
            score = 0;
          });
        }
      }
    });
  }

  stopTimer() {
    decreaseTimer?.cancel();
  }

  increase() {
    setState(() {
      gaugeHeight += 420 / 3;
    });

    if (gaugeHeight >= gaugeMaxHeight) {
      gaugeHeight = gaugeMaxHeight;

      setState(() {
        score++;
      });
    }
  }
}
