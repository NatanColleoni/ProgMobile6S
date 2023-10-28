import 'package:flutter/material.dart';

class ListName extends StatefulWidget {
  
  const ListName({super.key});

  @override
  State<StatefulWidget> createState() => _ListNameState();

  // @override
  // State<StatefulWidget> createState() {
  //   return _ListNameState();
  // }
}

class _ListNameState extends State<ListName> {
  /*
    final - pode manipular os elementos
  */
  final ctrl = TextEditingController();
  final List<String> listName = [];

  @override
  Widget build(BuildContext context) {
    /*
      Chain of Responsability - Design Pattern utilizado pelo flutter
    */
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: ctrl,
                ),
              ),
              IconButton(
                // onPressed precisa chamar setState para gerenciar o estado do Widget
                onPressed: () {
                  //texto de dentro do input
                  final nome = ctrl.text;
                  //setState irá gerenciar o estado da lista
                  if(nome.isNotEmpty) {
                    setState(() {
                      listName.add(nome);
                    });
                  }
                  ctrl.clear();
                },
                icon: const Icon(Icons.add),
              )
            ],
          )
        ),
        Expanded(child: ListView.builder(
            itemCount: listName.length, //listView precisa saber quantos elementos serão carregados
            itemBuilder: (context, index) {
              final nome = listName[index];
              return ListTile(
                title: Text(nome),
              ); 
            },
          ),
        )
      ],
    );
  }
  
}