import 'package:flutter/material.dart';
import 'package:pratica_4/components/card_comp.dart';
import 'package:pratica_4/view/form_nome.dart';

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
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: widget._listNome.length,
        itemBuilder: (context, index) {
          return CardComp(widget._listNome[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FormNome();
          })).then((nome) => {
            if(nome != null && nome != '') {
              setState((){
                widget._listNome.add(nome);
              })
            }
          });
        },
      ),
    );
  }
}