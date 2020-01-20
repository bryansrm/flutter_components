import 'package:flutter/material.dart';

final options = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

class HomePageTemp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componente temp'),
      ),
      body: ListView(
        //children: _crearItems(),
        children: _crearItemsCorta(),
      )
    ); 
  }

  List<Widget> _crearItems(){

    List<Widget> lista = List<Widget>();

    for (String opt in options) {
      final tmpWidget = ListTile(
        title: Text( opt ),
        );

        lista..add( tmpWidget )
             ..add( Divider() );
    }

    return lista;
  }

  List<Widget> _crearItemsCorta(){

    return options.map( (item) => Column(
      children: <Widget>[
        ListTile(
          title: Text( item + '!'),
          subtitle: Text('Subtitulo'),
          leading: Icon( Icons.account_circle ),
          trailing: Icon( Icons.keyboard_arrow_right ),
          onTap: (){},
        ),
        Divider()
      ],
    ) ).toList();

  }

}
