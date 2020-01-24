import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:componentes/src/routes/routes.dart';
import 'package:componentes/src/pages/alert_page.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en'), // English
        const Locale('es'), // Español
        // ... other locales the app supports
      ],
      title: 'Componentes App',
      //home: HomePage()
      initialRoute: 'homePage',
      routes: getApplicationRoutes(),
      onGenerateRoute: ( settings ){
        return MaterialPageRoute(
          builder: ( context ) => AlertPage()
        );
      },
    );
  }
}