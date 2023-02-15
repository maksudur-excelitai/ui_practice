import 'package:flutter/material.dart';

class ReorderableListViewPage extends StatefulWidget {
  const ReorderableListViewPage({Key? key}) : super(key: key);

  @override
  State<ReorderableListViewPage> createState() => _ReorderableListViewPageState();
}

class _ReorderableListViewPageState extends State<ReorderableListViewPage> {

  List<String> item = [
    "GeeksforGeeks",
    "Flutter",
    "Developer",
    "Android",
    "Programming",
    "CplusPlus",
    "Python",
    "javascript"
  ];

  void sortingWork() {
     setState((){
       item.sort();
     });
  }

  void recoderData(int oldindex,int newIndex){
     setState((){
       if(newIndex>oldindex){
         newIndex-=1;
       }

    final itemas=item.removeAt(oldindex);
       item.insert(newIndex, itemas);
     });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text(
        "Reorderable ListView",
    ),
    ),
      // body: ReorderableList(
      //   onReorder: recoderData,
      //   children: [
      //     for (final items in item)
      //       Card(
      //         color: Colors.white,
      //         key: ValueKey(items),
      //         elevation: 2,
      //         child: ListTitle(
      //           title: Text(items),
      //
      //         ),
      //       ),
      //   ],
      // ),

    );

  }
}
