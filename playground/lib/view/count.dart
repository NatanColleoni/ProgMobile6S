import 'package:flutter/material.dart';

class Count extends StatefulWidget {
  const Count({super.key});

  ///Retorna o estado da classe
  @override
  State<Count> createState() => _CountState();
}

/// Count Component
class _CountState extends State<Count> {

  var countNumber = 0;

  /// Implementação do "Widget"
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Contador: $countNumber'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            countNumber++;
          });
        },),
    );
  }
}