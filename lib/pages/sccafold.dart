import 'package:flutter/material.dart';
import 'package:ui_practice/Widget/my_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String name='gobinda';
  final  int ages=25;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(

     backgroundColor: Colors.white,
     elevation: 0.0,
     iconTheme: const IconThemeData(
       color: Colors.black87
     ),

     title: const Text('Catelog App'),
   ),
      body: Center(
        child: Container(
          child: Text('My name is $name and $ages old'),

        ),
      ),
      drawer: MyDrawer(),

    );
  }
}
