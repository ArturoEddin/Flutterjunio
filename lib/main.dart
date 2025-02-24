import 'package:flutter/material.dart';
import 'package:yes_no_app2/config/presentacion/screens/chat/chat_screen.dart';
import 'package:yes_no_app2/config/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yes No App',
      theme:AppTheme(selectColor:1).theme(),
      home: const ChatScreen()
    );
  }
}