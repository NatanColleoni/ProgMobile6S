import 'package:flutter/material.dart';

class CardComponent extends StatelessWidget {
  final String _name;

  const CardComponent(this._name, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(_name),
      ),
    );
  }
}