import 'package:flutter/material.dart';

class CardComponent extends StatelessWidget {
  final String _nome;

  const CardComponent(this._nome, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(_nome),
      ),
    );
  }
}