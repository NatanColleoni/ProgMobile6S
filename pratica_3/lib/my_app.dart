import 'package:flutter/material.dart';
import 'package:pratica_3/views/list_nome.dart';

class MyApp extends StatelessWidget {
  
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.green,
          backgroundColor: Colors.grey.shade300,
          accentColor: Colors.greenAccent
        ),
      ),
      home: ListNome(),
    );
  }
}