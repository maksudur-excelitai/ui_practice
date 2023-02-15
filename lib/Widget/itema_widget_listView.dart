import 'package:flutter/material.dart';
import 'package:ui_practice/productModel/model/model_list.dart';

class IteamWidget extends StatelessWidget {

  final Items items;
  const IteamWidget({Key? key, required this.items}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0.0,

      child: ListTile(
        onTap:(){
          print('${items.name} pressed');
        },

        leading: Image.network(items.image),
        title: Text(items.name),
        subtitle: Text(items.des),
        trailing: Text("\$${items.price}]",
            textScaleFactor: 1.5,
          style: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold
          ),
            ),


      ),
    );
  }
}
