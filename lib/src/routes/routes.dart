import 'package:flutter/material.dart';

import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/pages/avatar_page.dart';
import 'package:componentes/src/pages/home_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes(){
  return <String, WidgetBuilder>{
    'homePage': ( context ) => HomePage(),
    'alert'   : ( context ) => AlertPage(),
    'avatar'  : ( context ) => AvatarPage(),
  };
}