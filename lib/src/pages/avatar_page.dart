import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
      ),
      body: Center(
        child: Text('Avatar Page'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.arrow_back ),
        onPressed: (){
          Navigator.pop( context );
        },
      ),
    );
  }

}