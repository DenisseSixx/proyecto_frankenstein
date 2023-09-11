import 'package:flutter/material.dart';
import 'package:proyecto/pages/AlertDialog.dart';
import 'package:proyecto/pages/Form.dart';
import 'package:proyecto/pages/ListView.dart';
import 'package:proyecto/pages/Radio.dart';
import 'package:proyecto/pages/Singlechild.dart';
import 'package:proyecto/pages/card.dart';
import 'package:proyecto/pages/checkbox.dart';
import 'package:proyecto/pages/showDatePicker.dart';
import 'package:proyecto/pages/formfield.dart';

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.amber[800],
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.warning),
            icon: Icon(Icons.warning_amber_sharp),
           label: 'Alerta',
          ),
          NavigationDestination(
            icon: Icon(Icons.card_membership),
            label: 'Carta',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.check_box),
            icon: Icon(Icons.check_box_outline_blank),
            label: 'CheckBox',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.date_range_outlined),
            icon: Icon(Icons.date_range),
            label: 'Fecha',
          ),
           NavigationDestination(
            selectedIcon: Icon(Icons.list),
            icon: Icon(Icons.list_outlined),
            label: 'Lista',
          ),
           NavigationDestination(
            selectedIcon: Icon(Icons.radio_button_checked),
            icon: Icon(Icons.radio_button_checked_outlined),
            label: 'Radio',
          ),
           NavigationDestination(
            selectedIcon: Icon(Icons.alternate_email),
            icon: Icon(Icons.alternate_email_outlined),
            label: 'Form',
          ),
           NavigationDestination(
            selectedIcon: Icon(Icons.view_stream),
            icon: Icon(Icons.view_agenda_outlined),
            label: 'Fecha',
          ),
            NavigationDestination(
            selectedIcon: Icon(Icons.view_stream),
            icon: Icon(Icons.view_agenda_outlined),
            label: 'Fecha',
          ),
        ],
      ),
      body: <Widget>[
        //Container(
          /*color: Colors.red,
          alignment: Alignment.center,
          child: const Text('Page 1'),*/
          
         // const AlertDialog(),
          AlertDialogExampleApp(),
       // ),
        //Container(
          //color: Colors.green,
          //alignment: Alignment.center,
        // child: 
         CardExampleApp(),
         CheckboxExampleApp(),
         DatePickerApp(),
         ListViewExampleApp(),
          RadioExampleApp(),
          FormExampleApp(),
          SingleChildScrollViewExampleApp(),  
          MyForm(),      //),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: const Text('Page 3'),
        ),
      ][currentPageIndex],
    
    //Scaffold(
  appBar: AppBar(
    title: const Text('Denisse Lugo'),
  ),
  drawer: Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: const <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text(
            'Drawer Header',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.message),
          title: Text('Messages'),
        ),
        ListTile(
          leading: Icon(Icons.account_circle),
          title: Text('Profile'),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
        ),
      ],
    ),
  ),
);
  }
}

    