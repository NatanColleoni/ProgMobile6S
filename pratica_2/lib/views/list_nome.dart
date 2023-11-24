import 'package:flutter/material.dart';
import 'package:pratica_2/components/card_component.dart';
import 'package:pratica_2/views/form_nome.dart';

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
        title: const Text('Listagem de Nomes'),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: widget._listNomes.length,
        itemBuilder: (context, index) {
          final t = widget._listNomes[index];
          return CardComponent(t);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FormNome();
          })).then((value) => {
            if(value != null){
              setState((){
                widget._listNomes.add(value);
              })
            }
          });
        },
      ),
    );
  }
}