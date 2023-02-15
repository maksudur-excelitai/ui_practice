import 'dart:async';

import 'package:flutter/material.dart';

class Raff2 extends StatefulWidget {
  const Raff2({Key? key}) : super(key: key);

  @override
  State<Raff2> createState() {
    return _Raff2State();
  }
}


class _Raff2State extends State<Raff2> with SingleTickerProviderStateMixin {
  // int counter = 0;
  // get duration =>Duration(seconds: 1);
  double _initial  = 0.0;
  void update (){
    Timer.periodic(Duration(milliseconds: 100), (timer) {
      setState(() {
        _initial = _initial + 5;
      });

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            ElevatedButton(
              onPressed: () {
                final snackBar = SnackBar(
                  duration: Duration(milliseconds: 5000),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  margin: EdgeInsets.only(bottom: 112,left: 15,right: 15),
                  // padding: EdgeInsets.fromLTRB(0, 0, 0, 112),
                  // animation: LinearProgressIndicator(backgroundColor: Colors.amberAccent,
                  //   valueColor: AlwaysStoppedAnimation(Colors.teal),
                  //   minHeight: 20,),
                  content:
                  Container(
                    height: 46,
                    width: 336,
                    color: Color(0xFFE6F1D7),
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color(0xFF0A8545),
                              ),
                              child:
                              Image.asset('assets/images/green_done_icon.png'),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            const Text(
                              'Added to Cart',
                              style: TextStyle(color: Color(0xFF0A8545)),
                            ),
                            SizedBox(width: 148,),
                            Text('CHECKOUT',
                              style: TextStyle(fontSize: 12,color: Color(0xFF0000FF)),),
                          ],
                        ),
                        SizedBox(height: 6,),
                        LinearProgressIndicator(
                          // value: _initial,


                          backgroundColor: Colors.transparent,
                          valueColor: AlwaysStoppedAnimation(
                              Color(0xFF0A8545)),
                          minHeight: 6,
                          // duration: const Duration(milliseconds: 250),
                        ),

                      ],
                    ),
                  ),

                  // backgroundColor: Color(0xFFE6F1D7),
                  backgroundColor: Color(0xFFE6F1D7),
                  elevation: 10,
                  behavior: SnackBarBehavior.floating,

                );
                // ScaffoldMessenger.of(context).hideCurrentSnackBar();
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: const Text('Show SnackBar'),
            ),
            SizedBox(height: 450,),
            Text('fjsdhfbdsgfdgsfhndsg',),

          ],
        ),
      ),

      bottomNavigationBar:
      BottomNavigationBar(
        elevation: 100,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon:Icon(Icons.home,size: 24,),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon:Icon(Icons.person,size: 24,),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon:Icon(Icons.add_chart,size: 24,),
            label: 'School',
          ),
          BottomNavigationBarItem(icon:Icon(Icons.shopping_cart,size: 24,),
              label: 'Business'
          ),
        ],

        backgroundColor: Color(0xFFFFFFFF),
        iconSize: 24,

        selectedItemColor: Colors.blue,
        unselectedItemColor:  Color(0xff767676),
        selectedFontSize: 20,
        type: BottomNavigationBarType.fixed,
        unselectedLabelStyle: TextStyle(fontSize: 10),
        selectedLabelStyle: TextStyle(fontSize:20,fontWeight: FontWeight.bold),
      ),

    );
  }
}


