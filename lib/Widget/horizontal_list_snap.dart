import 'dart:math';

import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

class HorizontalScroolSnapp extends StatefulWidget {
  const HorizontalScroolSnapp({Key? key}) : super(key: key);

  @override
  State<HorizontalScroolSnapp> createState() => _HorizontalScroolSnappState();
}

class _HorizontalScroolSnappState extends State<HorizontalScroolSnapp> {


  List<int> data=[];

  int _focusedIndex = 0;

void initState(){
  super.initState();
  for( int i=0; i<30; i++){
    data.add(Random().nextInt(100)+1);
  }

  }
  void _OnItemFocus(int index){
  setState((){
    _focusedIndex=index;
  });
  
  }
  Widget _buildListIteam(BuildContext context,index){
 return Container(
 width: 35,
   child: Column(
     mainAxisAlignment: MainAxisAlignment.end,
     children: [
       Container(
         height: data[index].toDouble()*2,
         width: 25,
         color: Colors.green,
         child: Text('$index\n${data[index]}'),
       )
     ],
   ),
 );

  }
  Widget _buildItemDetails(){
  if(data.length>_focusedIndex){

    return  Container(
      height: 150,
      child: Text('index:$_focusedIndex:${data[_focusedIndex]}'),
    );
  }
  return Container(
    height: 150,
    child: Text("No Data"),
  );
  }

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Horizontal Scroll Snap',style: TextStyle(fontSize: 20),),
      ),

      body: Container(
        child: Column(
          children: [
            Expanded(child: ScrollSnapList(
              itemBuilder:  _buildListIteam,
              itemCount: data.length,
              onItemFocus: _OnItemFocus,
              itemSize: 35,
              reverse: true,


            ),),
            _buildItemDetails(),
          ],
        ),
      ),

    );
  }
}
