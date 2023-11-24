import 'package:flutter/material.dart';
import 'package:pratica_5/views/list_nome.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSwatch(
          backgroundColor: Colors.grey.shade300,
          primarySwatch: Colors.green,
          accentColor: Colors.greenAccent
        )
      ),
      home: ListNome(),
    );
  }

}