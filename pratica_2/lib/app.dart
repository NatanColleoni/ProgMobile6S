import 'package:flutter/material.dart';
import 'package:pratica_2/views/list_nome.dart';

class App extends StatelessWidget{
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.green,
          accentColor: Colors.greenAccent,
          backgroundColor: Colors.grey.shade300
        )
      ),
      home: ListNome(),
    );
  }

}