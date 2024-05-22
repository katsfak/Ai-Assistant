import 'dart:convert';
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ChatUser myself = ChatUser(id: "1", firstName: "Catherine Sfakianou");
  ChatUser bot = ChatUser(id: "2", firstName: "Copilot");
  List<ChatMessage> allMessages = [];
  List<ChatUser> typing = [];

  final String flaskApiUrl =
      "http://127.0.0.1:5000/chat"; // URL of your Flask API

  Future<void> getData(ChatMessage m) async {
    typing.add(bot);
    allMessages.insert(0, m);
    setState(() {});

    var data = {"message": m.text};

    try {
      var response = await http.post(Uri.parse(flaskApiUrl),
          headers: {'Content-Type': 'application/json'},
          body: jsonEncode(data));
      if (response.statusCode == 200) {
        var result = jsonDecode(response.body);
        var botResponse = result['bot_message'];
        print(botResponse);
        ChatMessage botMessage = ChatMessage(
          user: bot,
          createdAt: DateTime.now(),
          text: botResponse,
        );
        allMessages.insert(0, botMessage);
      } else {
        print("Error occurred: ${response.statusCode}");
      }
    } catch (e) {
      print("Error: $e");
    } finally {
      typing.remove(bot);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DashChat(
        messageOptions: MessageOptions(showTime: true),
        typingUsers: typing,
        currentUser: myself,
        onSend: (ChatMessage m) {
          getData(m);
        },
        messages: allMessages,
      ),
    );
  }
}
