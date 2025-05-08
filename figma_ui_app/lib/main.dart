import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const TelegramUI());
}

class TelegramUI extends StatelessWidget {
  const TelegramUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Telegram UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}
