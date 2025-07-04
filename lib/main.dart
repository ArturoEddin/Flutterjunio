import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app2/presentacion/providers/chat_provaider.dart';
import 'package:yes_no_app2/presentacion/screens/chat/chat_screen.dart';
import 'package:yes_no_app2/presentacion/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChatProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Yes No App',
        theme:AppTheme(selectColor:1).theme(),
        home: const ChatScreen()
      ),
    );
  }
}