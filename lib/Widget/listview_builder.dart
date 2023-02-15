import 'package:flutter/material.dart';
import 'package:ui_practice/Widget/itema_widget_listView.dart';
import 'package:ui_practice/productModel/model/model_list.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {




  @override
  Widget build(BuildContext context) {
    
    final currentListClck=List.generate(50, (index) => CategoryModel.iteams[0]);
    
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Dynamic List App",style: TextStyle(fontSize: 25),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: currentListClck.length,
            itemBuilder: (context,index){
            return IteamWidget(items:
              currentListClck[index]
              ,);
            },
         ),
      ),

    );
  }
}
