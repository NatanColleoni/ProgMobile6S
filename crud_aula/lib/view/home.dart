import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  
  const Home({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'CRUD - AULA 27/10/2023',
          style: TextStyle(
            color: Color.fromRGBO(255, 255, 255, .8),
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
    );
  }
}