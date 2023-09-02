import 'package:flutter/material.dart';
import 'package:playground/view/home.dart';

class App extends StatelessWidget {
  
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.purple.shade400
        ),
      ),
      home: const Home(),
    );
  }

}