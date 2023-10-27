/*
  Widget principal, responsável por criar todos outros
*/

import 'package:crud_aula/view/home.dart';
import 'package:flutter/material.dart';

/*
  Comportamento estático - Stateless
  Comportamento dinâmico - Stateful
*/
class App extends StatelessWidget {
  const App({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.purple.shade300,
        )
      ),
      home: const Home(),
    );
  }
}