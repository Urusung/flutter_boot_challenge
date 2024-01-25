import 'package:flutter/material.dart';

class MySlackAvatorScreen extends StatefulWidget {
  const MySlackAvatorScreen({super.key});

  @override
  State<MySlackAvatorScreen> createState() => _MySlackAvatorScreenState();
}

double sliderValue1 = 0;
double sliderValue2 = 0;

class _MySlackAvatorScreenState extends State<MySlackAvatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 32, bottom: 32),
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    flex: 2,
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 100,
                        height: 60 + sliderValue1,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: 170 + sliderValue2 / 3,
                        height: 50 + sliderValue2 / 10,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(50),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Slider(
            value: sliderValue1,
            max: 50,
            onChanged: (double value) {
              setState(() {
                sliderValue1 = value;
              });
            },
          ),
          Slider(
            value: sliderValue2,
            max: 60,
            onChanged: (double value) {
              setState(() {
                sliderValue2 = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
