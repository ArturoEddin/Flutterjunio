import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding:  EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjypL5Grh9ajEpX7YIvLrI_M6nWt_Z76h7Ww&s"),
          ),
        ),
        title:const Text("Mi Amor  "),
        centerTitle:false,
        ),
        body: _ChatView() ,
    );
  }
}

class _ChatView extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child:Container(
              color: Colors.red,
            )),
            const Text("Mundo")
          ],
        ),
      ),
    );
  }
}