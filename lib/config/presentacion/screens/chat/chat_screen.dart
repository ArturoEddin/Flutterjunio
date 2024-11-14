import 'package:flutter/material.dart';
import 'package:yes_no_app2/config/presentacion/widgets/chat/my_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://imgmedia.larepublica.pe/640x371/larepublica/migration/images/U53P23IRBJFSDJRX4AMTDQDVQM.webp"),
          ),
        ),
        title: const Text("Mi Amor  "),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return const MyMessageBubble();
              },
            )),
            const Text("Mundo")
          ],
        ),
      ),
    );
  }
}
