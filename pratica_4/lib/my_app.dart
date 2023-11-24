import 'package:flutter/material.dart';
import 'package:pratica_4/view/list_nome.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.green,
          accentColor: Colors.greenAccent,
          backgroundColor: Colors.grey.shade300
        ),
        useMaterial3: true
      ),
      home: ListNome()
    );
  }
}