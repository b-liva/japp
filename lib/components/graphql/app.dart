import 'package:flutter/material.dart';
import './users.dart';


class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jcm',
      onGenerateRoute: (settings){
        switch(settings.name){
          case '/':
            return MaterialPageRoute(builder: (_) => Users());
          default:
            return MaterialPageRoute(builder: (_) => Scaffold());
        }
      },
    );
  }
}
