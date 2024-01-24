import 'package:flutter/material.dart';

class HelloLayoutScreen extends StatefulWidget {
  const HelloLayoutScreen({super.key});

  @override
  State<HelloLayoutScreen> createState() => _HelloLayoutScreenState();
}

class _HelloLayoutScreenState extends State<HelloLayoutScreen> {
  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('I can layout this'),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    border: Border(
                      right: BorderSide(
                        color: Colors.black,
                        width: 4,
                      ),
                      bottom: BorderSide(
                        color: Colors.black,
                        width: 4,
                      ),
                    ),
                  ),
                  height: maxWidth / 2,
                  width: maxWidth / 2,
                ),
                Column(
                  children: [
                    Container(
                      height: maxWidth / 4,
                      width: maxWidth / 2,
                      color: Colors.blue,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.black,
                            width: 4,
                          ),
                        ),
                      ),
                      height: maxWidth / 4,
                      width: maxWidth / 2,
                    ),
                  ],
                )
              ],
            ),
            Row(
              children: [
                SizedBox(
                  height: maxWidth / 2,
                  width: maxWidth / 2,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        right: BorderSide(
                          color: Colors.black,
                          width: 4,
                        ),
                      ),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      height: maxWidth / 2,
                      width: maxWidth / 2,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 12, right: 12, top: 12),
                            child: Container(
                              width: maxWidth / 2 - 10,
                              height: maxWidth / 4 - 10,
                              color: Colors.yellowAccent,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
            Column(
              children: [
                Container(
                  height: maxWidth / 6,
                  color: Colors.yellow,
                ),
                Container(
                  height: maxWidth / 6,
                  color: Colors.brown,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
