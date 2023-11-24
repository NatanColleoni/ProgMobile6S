import 'package:flutter/material.dart';

class FormNome extends StatefulWidget {
  const FormNome({super.key});

  @override
  State<FormNome> createState()  => _FormNomeState();
}

class _FormNomeState extends State<FormNome> {
  final TextEditingController _ctrlNome = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listagem de Nomes'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                controller: _ctrlNome,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Digite o nome',
                  hintText: 'Natan'
                ),
              ),
            ),
            FloatingActionButton(
              child: const Icon(Icons.save_outlined),
              onPressed: () {
                Navigator.pop(context, _ctrlNome.text);
              },
            )
          ]
        ),
      ),
    );
  }
}