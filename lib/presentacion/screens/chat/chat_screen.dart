import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app2/domain/entities/message.dart';
import 'package:yes_no_app2/presentacion/providers/chat_provaider.dart';
import 'package:yes_no_app2/presentacion/widgets/chat/her_message_bubble%20.dart';
import 'package:yes_no_app2/presentacion/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app2/presentacion/widgets/shared/message_field_box.dart';

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
    final chatprovider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: chatprovider.messageList.length,
              itemBuilder: (context, index) {
                final message = chatprovider.messageList[index];
                return (message.fromWho == FromWho.hers)
                ? const HerMessageBubble()
                :  MyMessageBubble(message : message) ;// Si el mensaje es de ella
                
                
              },
            )),

            //CaJA DE TEXTO
            const MessageFieldBox()
          ],
        ),
      ),
    );
  }
}
