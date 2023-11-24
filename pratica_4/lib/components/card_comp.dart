import 'package:flutter/material.dart';

class CardComp extends StatelessWidget {
  final String _nome;

  const CardComp(this._nome,{super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(_nome),
      ),
    );
  }
}