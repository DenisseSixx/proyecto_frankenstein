//import 'package:proyecto/pages/AlertDialog.dart';
import 'package:flutter/material.dart';
import 'package:proyecto/pages/BottonNavigationBar.dart';

void main() => runApp(BottomNavigationBarExampleApp());

/*class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:  'Proyecto',
      theme: ThemeData(
        useMaterial3: true, colorSchemeSeed: Colors.indigoAccent),
      home: DialogExample()
      ,);
  }
}*/
class BottomNavigationBarExampleApp extends StatelessWidget {
  const BottomNavigationBarExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NavigationExample(),
    );
  }
}