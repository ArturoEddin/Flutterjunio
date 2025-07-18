import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:yes_no_app2/config/helpers/get_yes_no_answer.dart';
import 'package:yes_no_app2/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final GetYesNoAnswer getYesNoAnswer=GetYesNoAnswer();
  final ScrollController chatScrollController = ScrollController();
  List<Message> messageList = [
    Message(text: "Hola Amor", fromWho: FromWho.me),
    Message(text: "Ya regresate del trabajo?", fromWho: FromWho.me)
  ];

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;

    final newMessage = Message(
      text: text,
      fromWho: FromWho.me,
    );
    messageList.add(newMessage);

    if(text.endsWith("?")){
     herReply();

    }
    


    notifyListeners();
    moveScrollToBottom();
  }
  Future<void> herReply() async{
  final herMessage = await getYesNoAnswer.getAnswer();

  } 

  Future<void> moveScrollToBottom() async{
    await Future.delayed(const Duration(milliseconds: 100));
    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }
}
