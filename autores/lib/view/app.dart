import 'package:autores/view/list_autor.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  
  const App({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ListAutor(),
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSwatch(
          backgroundColor: Colors.grey.shade300,
          primarySwatch: Colors.green,
          accentColor: Colors.blueAccent,
        ),
      ),
    );
  }

}