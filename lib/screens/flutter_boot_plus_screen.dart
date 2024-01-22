import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlutterBootPlusScreen extends StatelessWidget {
  const FlutterBootPlusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 255, 251, 255),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'FlutterBoot Plus',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 16)),
                      SupportDetalisWidget(
                        icon: Icon(Icons.bolt),
                        title: 'Premium features',
                        description:
                            'Plus subscribers have access to FlutterBoot+ and out latest beta features.',
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 16,
                        ),
                      ),
                      SupportDetalisWidget(
                        icon: Icon(Icons.whatshot),
                        title: 'Priority access',
                        description:
                            'You\'ll be able to use FlutterBoot+ even when demand is high',
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 16,
                        ),
                      ),
                      SupportDetalisWidget(
                        icon: Icon(Icons.speed),
                        title: 'Ultra-fast',
                        description:
                            'Enjoy even faster response speeds when using FlutterBoot',
                      ),
                    ],
                  ),
                ),
              ),
              const Text(
                'Restore subscription',
                textAlign: TextAlign.center,
              ),
              const Padding(padding: EdgeInsets.only(top: 24)),
              const Text('Auto-renews for \$25/month until canceled',
                  textAlign: TextAlign.center),
              const Padding(padding: EdgeInsets.only(top: 8)),
              FilledButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.only(
                    top: 16,
                    bottom: 16,
                  ),
                  backgroundColor: Colors.black,
                ),
                onPressed: () {},
                child: const Text('Subscribe'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SupportDetalisWidget extends StatelessWidget {
  const SupportDetalisWidget({
    required this.icon,
    required this.title,
    required this.description,
    super.key,
  });
  final Icon icon;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 42,
          height: 42,
          child: FittedBox(
            child: icon,
          ),
        ),
        const Padding(padding: EdgeInsets.only(right: 16)),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
                overflow: TextOverflow.clip,
              ),
              Text(
                description,
                style: const TextStyle(
                  fontSize: 17,
                  overflow: TextOverflow.clip,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
