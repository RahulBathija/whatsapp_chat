// providers/chat_provider.dart
import 'package:flutter/material.dart';
import '../models/message.dart';

class ChatProvider with ChangeNotifier {
  List<Message> _messages = [];

  List<Message> get messages => _messages;

  void sendMessage(String sender, String text) {
    _messages.add(Message(sender: sender, text: text, time: DateTime.now()));
    notifyListeners();
  }
}
