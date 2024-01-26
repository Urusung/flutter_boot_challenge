import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCuteGPTScreen extends StatefulWidget {
  const MyCuteGPTScreen({super.key});

  @override
  State<MyCuteGPTScreen> createState() => _MyCuteGPTScreenState();
}

class _MyCuteGPTScreenState extends State<MyCuteGPTScreen> {
  List chatList = [
    const ChatWidget(
        color: Colors.green,
        profileName: 'G',
        name: 'MyCuteGPT',
        chat: 'Hello, how can I help you?'),
  ];
  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'MyCuteGPT',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: ' 3.5',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        actions: const [
          Icon(
            Icons.edit,
            color: Colors.black,
          ),
          Padding(
            padding: EdgeInsets.only(right: 16),
          ),
          Icon(
            Icons.more_vert,
            color: Colors.black,
          ),
          Padding(
            padding: EdgeInsets.only(right: 16),
          ),
        ],
        leading: const Icon(
          Icons.subject,
          color: Colors.black,
        ),
        backgroundColor: const Color.fromARGB(255, 255, 251, 255),
      ),
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 16.0, right: 16, bottom: 16, top: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ListView.builder(
                    itemCount: chatList.length,
                    itemBuilder: (context, index) {
                      return chatList[index];
                    }),
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: textController,
                      decoration: InputDecoration(
                        hintText: 'Message',
                        hintStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(48),
                        ),
                        suffixIcon: textController.text.isNotEmpty
                            ? null
                            : const Padding(
                                padding: EdgeInsets.only(right: 16),
                                child: Icon(Icons.graphic_eq),
                              ),
                        filled: true,
                        fillColor: Colors.black12,
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 24,
                          horizontal: 16,
                        ),
                      ),
                      cursorColor: Colors.black,
                      minLines: 1,
                      maxLines: 8,
                      onChanged: (value) => setState(() {}),
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(right: 16)),
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: textController.text.isNotEmpty
                        ? Colors.black
                        : Colors.black12,
                    child: IconButton(
                      onPressed: textController.value.text.isEmpty
                          ? null
                          : () {
                              setState(() {
                                chatList.add(
                                  ChatWidget(
                                    color: Colors.purple,
                                    profileName: 'FC',
                                    name: 'FlutterBoot',
                                    chat: textController.value.text,
                                  ),
                                );
                                chatList.add(
                                  const ChatWidget(
                                    color: Colors.green,
                                    profileName: 'G',
                                    name: 'MyCuteGPT',
                                    chat:
                                        'Actually, I don\'t have any features, but one day I\'ll grow up and become ChatGPT!',
                                  ),
                                );
                              });

                              textController.clear();
                              FocusScope.of(context).unfocus();
                            },
                      icon: const Icon(
                        Icons.arrow_upward_rounded,
                      ),
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ChatWidget extends StatelessWidget {
  const ChatWidget({
    required this.color,
    required this.profileName,
    required this.name,
    required this.chat,
    super.key,
  });
  final Color color;
  final String profileName;
  final String name;
  final String chat;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 12,
          backgroundColor: color,
          child: Center(
            child: Text(
              profileName,
              style: const TextStyle(fontSize: 14, color: Colors.white),
            ),
          ),
        ),
        const Padding(padding: EdgeInsets.only(right: 8)),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(padding: EdgeInsets.only(right: 8)),
              Text(
                name,
                style: const TextStyle(
                  fontSize: 12,
                  overflow: TextOverflow.clip,
                ),
              ),
              const Padding(padding: EdgeInsets.only(right: 16)),
              Text(
                chat,
                style: const TextStyle(
                  fontSize: 17,
                ),
                overflow: TextOverflow.clip,
              ),
              const Padding(padding: EdgeInsets.only(bottom: 16)),
            ],
          ),
        ),
      ],
    );
  }
}
