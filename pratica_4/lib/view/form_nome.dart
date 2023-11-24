import 'package:flutter/material.dart';

class FormNome extends StatefulWidget {
  FormNome({super.key});

  @override
  State<FormNome> createState() => _FormNomeState();

}

class _FormNomeState extends State<FormNome> {
  final TextEditingController _ctrlNome = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Criação de Nomes'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _ctrlNome,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nome',
                  hintText: 'Natan Colleoni Fonseca'
                ),
              ),
            ),
            FloatingActionButton(
              child: const Icon(Icons.save),
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