import 'package:flutter/material.dart';

import 'package:componentes/src/providers/menu_providers.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
 
    return FutureBuilder(
      future: menuProvider.cargaData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot){
        return  ListView(
          children: _listaItems( snapshot.data ),
        );
      },
    );

  }

  List<Widget> _listaItems(List<dynamic> items) {

    final List<Widget> lista = [];

    for (var item in items) {

      lista..add(
        ListTile(
          title: Text(item['texto']),
          leading: Icon( Icons. account_circle, color: Colors.blue),
          trailing: Icon( Icons.keyboard_arrow_right, color: Colors.blue),
          onTap: (){},
        )
      )
      ..add(Divider());

    }

    return lista;
  }

}