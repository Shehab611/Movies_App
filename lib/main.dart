
import 'package:flutter/material.dart';
import 'package:movies_app/core/services/services_locator.dart';

import 'presentation/screens/movies_screen.dart';

void main() async{

  ServicesLocator().init();
  runApp(const MyApp());
}
//constants
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainMoviesScreen(),
    );
  }
}

