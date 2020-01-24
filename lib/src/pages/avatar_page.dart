import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(7.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://pmcdeadline2.files.wordpress.com/2018/12/rexfeatures_9640572fl-e1546045977322.jpg?w=630&h=423'),
              radius: 22.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('BR', style: TextStyle(color: Colors.white),),
              backgroundColor: Colors.orange,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('http://www.teleamazonas.com/wp-content/uploads/2018/11/lee.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
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