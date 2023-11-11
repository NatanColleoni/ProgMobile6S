import 'package:autores/view/form_autor.dart';
import 'package:flutter/material.dart';

class ListAutor extends StatelessWidget {
  const ListAutor({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Autores'),
      ),
      body: const FormAutor(),
    );
  }

}