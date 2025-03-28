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
                color: colors.secondary,
                borderRadius: BorderRadius.circular(20)),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                "Hola Mundo",
                style: TextStyle(color: Colors.white),
              ),
            )),
        const SizedBox(height: 5),
        // todo : imagen
        _ImageBubble(),

        const SizedBox(height: 10),
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        "https://yesno.wtf/assets/no/10-d5ddf3f82134e781c1175614c0d2bab2.gif",
        width: size.width * 0.7,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return  Container(
             width: size.width*0.7,
             height: 150,
             padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
             child:const  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                CircularProgressIndicator(),
                SizedBox(height: 10),
                Text("Mi amor está enviando una imagen"),
              ],
            ),
            );
        
        },
  errorBuilder: (context, error, stackTrace) {
          return Container(
            width: size.width * 0.7,
            height: 150,
            color: Colors.grey,
            child: const Center(
              child: Icon(Icons.error, color: Colors.red),
            ),
          );
        },
      ),
    );
  }
}
