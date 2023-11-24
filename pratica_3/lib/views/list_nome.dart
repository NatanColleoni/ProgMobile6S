import 'package:flutter/material.dart';
import 'package:pratica_3/components/card_component.dart';
import 'package:pratica_3/views/form_nome.dart';

class ListNome extends StatefulWidget {
  final List<String> _listNome = [];

  ListNome({super.key});

  @override
  State<ListNome> createState() => _ListNomeState();

}

class _ListNomeState extends State<ListNome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listagem de Nomes'),
      ),
      body: ListView.builder(
        itemCount: widget._listNome.length,
        itemBuilder: (context, index) {
          return CardComponent(widget._listNome[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FormNome();
          })).then((value) => setState((){
            widget._listNome.add(value);
          }));
        },
      ),
    );
  }

}