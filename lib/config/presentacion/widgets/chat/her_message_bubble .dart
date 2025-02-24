import 'dart:html';

import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            decoration: BoxDecoration(
                color: colors.secondary, borderRadius: BorderRadius.circular(20)),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                "Hola Mundo",
                style: TextStyle(color: Colors.white),
              ),
            )),
        const SizedBox(height: 5),
        // todo : imagen
        _ImageBubble()
      ],
    );
  }
}
class _ImageBubble extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Image.network( "https://yesno.wtf/assets/no/10-d5ddf3f82134e781c1175614c0d2bab2.gif");
  }
}