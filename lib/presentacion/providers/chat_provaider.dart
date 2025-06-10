import 'package:flutter/material.dart';
import 'package:yes_no_app2/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messageList = [
    Message(text: "Hola Amor", fromWho: FromWho.me),
    Message(text: "Ya regresate del trabajo?", fromWho: FromWho.me)
  ];

  Future<void> sendMessage(String text) async {
            
  }
}
