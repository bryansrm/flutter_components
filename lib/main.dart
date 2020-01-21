import 'package:flutter/material.dart';

import 'package:componentes/src/pages/home_page.dart'; 
import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/pages/avatar_page.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Componentes App',
      //home: HomePage()
      initialRoute: 'homePage',
      routes: <String, WidgetBuilder>{
        'homePage': ( context ) => HomePage(),
        'alert'   : ( context ) => AlertPage(),
        'avatar'  : ( context ) => AvatarPage(),
      },
      onGenerateRoute: ( settings ){
        return MaterialPageRoute(
          builder: ( context ) => AlertPage()
        );
      },
    );
  }
}