import 'package:flutter/material.dart';
import 'package:pratica_5/components/card_component.dart';
import 'package:pratica_5/views/form_nome.dart';

class ListNome extends StatefulWidget {
  final List<String> _listNomes = []; 
  
  ListNome({super.key});

  @override
  State<ListNome> createState() => _ListNomeState();

}

class _ListNomeState extends State<ListNome> {
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Listagem de Nomes'),
      ),
      body: ListView.builder(
        itemCount: widget._listNomes.length,
        itemBuilder: (context, index) {
          return CardComponent(widget._listNomes[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const FormNome();
          })).then((nome) {
            if(nome != '' && nome != null) {
              setState(() {
                widget._listNomes.add(nome);
              });
            }
          });
        },
      ),
    );
  }
}