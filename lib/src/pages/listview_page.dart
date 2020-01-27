import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

  Lis<int> _listaNumeros = [1,2,3,4,5];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista Page'),
      ),
      body: Center(
        child: Text('Lista Page'),
      ),
    );
  }

  Widget _crearLista(){

    return ListView.builder(
      itemCount: _listaNumeros.length,
      itemBuilder: ( context, index ){

        final imagen = _listaNumeros[index];

        return FadeInImage(
          image: NetworkImage('https://picsum.photos/500/300/?image=$imagen'),,
          placeholder: AssetImage('assets/jar-loading'),
        );
      },
    );

  }

}

