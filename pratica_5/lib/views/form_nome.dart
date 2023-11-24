import 'package:flutter/material.dart';

class FormNome extends StatefulWidget {
  const FormNome({super.key});

  @override
  State<FormNome> createState() => _FormNomeState();

}

class _FormNomeState extends State<FormNome> {
  final TextEditingController _ctrlNome = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Listagem de Nomes'),
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
                  label: Text('Digite seu nome'),
                  hintText: 'Natan',
                ),
                keyboardType: TextInputType.text,
              ),
            ),
            FloatingActionButton(
              child: const Icon(Icons.save_as_outlined),
              onPressed: () {
                Navigator.pop(context, { nome: _ctrlNome.text});
              },
            )
          ],
        ),
      ),
    );
  }

}