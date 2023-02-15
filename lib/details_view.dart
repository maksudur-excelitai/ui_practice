import 'package:flutter/material.dart';

class DetailsView extends StatefulWidget {
  const DetailsView({Key? key}) : super(key: key);

  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
      backgroundColor: Color(0xffFFFFFF),
        leading: Row(
          children: [
            SizedBox(width: 8,),
            
            IconButton(onPressed: (){}, icon: Icon(
              Icons.arrow_back_ios,
              size: 30,
              color: Color(0xFF363636),

            )),




          ],

        ),
        actions: [
          Center(
            child: Text(
              'DETAILS VIEW',
              style: TextStyle(color: Color(0xFF363636), fontSize: 24),
            ),
          ),
          SizedBox(width: 180,)

        ],

      ),
      body:Stack(
        children: [
          ListView(
            shrinkWrap: true,
            children: [
              Center(
                child: Container(
                  width: 360,
                  child: Column(
                    children: [
                      SizedBox(height:12),
                        Container(
                          height: 260,
                          width: 260,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xFFCBCBCB), width: 1)
                          ),
                          child: FittedBox(
                            child: Image.asset('assets/images/Jaynamaz.png'),
                          ),


                        ),
                      SizedBox(
                        height: 10,
                      ),

                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: 'Product Code:',
                              style: TextStyle(
                                color: Color(0xFF7E7E7E),
                                fontSize: 20,
                              ),
                            ),
                            TextSpan(
                              text: ' 102272',
                              style:
                              TextStyle(color: Color(0xFF00A500), fontSize: 20),
                            ),

                          ],

                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: 'Stock:',
                            style: TextStyle(
                              color: Color(0xFF7E7E7E),
                              fontSize: 20,
                            ),
                          ),
                          TextSpan(
                            text: ' Available',
                            style:
                            TextStyle(color: Color(0xFF00A500), fontSize: 20),
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: 10,
                      ),

                      Row(
                        children: [
                          Container(
                            child: Expanded(
                              child: const Text(
                                'Super Shine Jaynamaz Blue nk smnco ikmwed msm wod sdkmk mmw d',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                textDirection: TextDirection.ltr,
                                style: TextStyle(fontSize: 30),
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            '80-120 cm',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF7E7E7E),
                            ),
                          ),
                          Spacer(),
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                text: 'pc:',
                                style: TextStyle(
                                  color: Color(0xFF7E7E7E),
                                  fontSize: 20,
                                ),
                              ),
                              TextSpan(
                                text: ' 1',
                                style: TextStyle(
                                    color: Color(0xFF2C2C2C), fontSize: 20),
                              ),
                            ]),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '৳480',
                            style: TextStyle(fontSize: 30,color: Color(0xffE37D4E)),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            '৳570',
                            style: TextStyle(
                                fontSize: 24,
                                color: Color(0xff323232),
                                decoration: TextDecoration.lineThrough),
                          ),
                        ],
                      ),
                      SizedBox(height: 14,),
                      Row(
                        children: [
                          SizedBox(width: 10,),
                          Text('Size :',style: TextStyle(color: Color(0xFFF2C2C2C),fontSize: 18),),
                          SizedBox(width: 10,),

                           Container(
                             width: 36,
                             height: 36,
                             decoration: BoxDecoration(
                               boxShadow: [
                                 BoxShadow(color: Color(0xFFA7A7A7), spreadRadius: 1),
                               ],
                               borderRadius: BorderRadius.circular(10),
                               border: Border.all(color: Color(0xFFCBCBCB)),
                               color: Color(0xFFE9E9E9),
                             ),
                             child: Center(
                               child: ElevatedButton(
                                 style: ElevatedButton.styleFrom(
                                   primary: Color(0xffCBCBCB),
                                 ),
                                 child: Text("S"),
                                 onPressed:() {

                                 },
                               )
                             ),
                           ),
                    SizedBox(width: 6,),
                          Container(
                            width: 36,
                            height: 36,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(color: Color(0xFFA7A7A7), spreadRadius: 1),
                              ],
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Color(0xFFCBCBCB)),
                              color: Color(0xFFE9E9E9),
                            ),

                              child: Center(
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xffCBCBCB),
                                    ),
                                    child: Text("M"),
                                    onPressed:() {

                                    },
                                  )
                              ),
                            ),

                          SizedBox(width: 6,),
                          Container(
                            width: 36,
                            height: 36,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(color: Color(0xFFA7A7A7), spreadRadius: 1),
                              ],
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Color(0xFFCBCBCB)),
                              color: Color(0xFFE9E9E9),
                            ),
                            child: Center(
                              child: Center(
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xffCBCBCB),
                                    ),
                                    child: Text("L"),
                                    onPressed:() {

                                    },
                                  )
                              ),
                            ),
                          ),
                          SizedBox(width: 6,),
                          Container(
                            width: 36,
                            height: 36,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(color: Color(0xFFA7A7A7), spreadRadius: 1),
                              ],
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Color(0xFFCBCBCB)),
                              color: Color(0xFFE9E9E9),
                            ),
                            child: Center(
                              child: Center(
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xffCBCBCB),
                                    ),
                                    child: const Text("XL",),
                                    onPressed:() {

                                    },
                                  )
                              ),
                            ),
                          ),
                          SizedBox(width: 6,),




                          ]

                      ),


                    ],

                  ),

                ),
              )

            ],

          )

        ],

      )

    );
  }
}


// Positioned(
//             top:582,
//             child: Container(
//               height: 70,
//               width: MediaQuery.of(context).size.width,
//               color: Color(0xFFFFFFFF),
//               // color: Color(0xffFFFFFF),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   // SizedBox(height: 20,),
//                   ElevatedButton(onPressed: (){},
//                     child: Text("Buy Now",
//                       style: TextStyle(fontSize: 12,color: Color(0xffFFFFFF),),
//                     ),
//                     style: ElevatedButton.styleFrom(
//                       // side: BorderSide(width: 0.0,color: Color(0xffFFFFFF)),
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(10.0)),
//                       // backgroundColor: Color(0xFF2C2C2C),
//                       padding: EdgeInsets.symmetric(
//                         horizontal: 42,
//                         vertical: 20,
//                       ),
//                     ),
//                   ),
//                   // SizedBox(width: 30,)
//                   ElevatedButton(
//                     child: Text("Add to Cart",
//                       style: TextStyle(fontSize: 12,color: Color(0xffFFFFFF),),
//                     ),
//                     style: ElevatedButton.styleFrom(
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(10.0)),
//                       // backgroundColor: Color(0xFFE37D4E),
//                       padding: EdgeInsets.symmetric(
//                         horizontal: 42,
//                         vertical: 20,
//                       ),
//                     ),
//                     onPressed: (){
//
//                       final
//                       snackBar = SnackBar(
//                         duration: Duration(milliseconds: 5000),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(5),
//                         ),
//                         // margin: EdgeInsets.only(bottom: 70,left: 15,right: 15),
//                         padding: EdgeInsets.fromLTRB(0, 0, 15, 80),
//                         // animation: LinearProgressIndicator(backgroundColor: Colors.amberAccent,
//                         //   valueColor: AlwaysStoppedAnimation(Colors.teal),
//                         //   minHeight: 20,),
//                         content:
//                         Container(
//                           height: 46,
//                           width: 336,
//                           color: Color(0xFFE6F1D7),
//                           child: Column(
//                             children: [
//                               SizedBox(height: 10,),
//                               Row(
//                                 // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                 // crossAxisAlignment: CrossAxisAlignment.start,
//                                 mainAxisSize: MainAxisSize.max,
//                                 children: [
//                                   Container(
//                                     width: 24,
//                                     height: 24,
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(30),
//                                       color: Color(0xFF0A8545),
//                                     ),
//                                     child:
//                                     Image.asset('assets/images/green_done_icon.png'),
//                                   ),
//                                   SizedBox(
//                                     width: 8,
//                                   ),
//                                   const Text(
//                                     'Added to Cart',
//                                     style: TextStyle(color: Color(0xFF0A8545)),
//                                   ),
//                                   SizedBox(width: 148,),
//                                   // Text('CHECKOUT',
//                                   //   style: TextStyle(fontSize: 12,color: Color(0xFF0000FF),),
//                                   //   recognizer:tapGestureRecognizerForgotPassword,
//                                   // ),
//                                   RichText(
//                                     text: TextSpan(
//                                         children: [
//                                           TextSpan(
//                                             text:'CHECKOUT',
//                                             style: const TextStyle(fontSize: 12,color: Color(0xFF0000FF)),
//                                             recognizer: tapGestureRecognizerForgotPassword,
//                                           ),
//                                         ]
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                               SizedBox(height: 6,),
//                               LinearProgressIndicator(
//                                 // value: _initial,
//
//
//                                // backgroundColor: Colors.transparent,
//                                 valueColor: AlwaysStoppedAnimation(
//                                     Color(0xFF0A8545)),
//                                 minHeight: 6,
//                                 // duration: const Duration(milliseconds: 250),
//                               ),
//
//                             ],
//                           ),
//                         ),
//
//                         // backgroundColor: Color(0xFFE6F1D7),
//                         backgroundColor: Color(0xFFE6F1D7),
//                         elevation: 10,
//                         // behavior: SnackBarBehavior.floating,
//
//                       );
//                       // ScaffoldMessenger.of(context).hideCurrentSnackBar();
//                       ScaffoldMessenger.of(context).showSnackBar(snackBar);
//
//
//
//                       //
//                       // final snackBar = SnackBar(
//                       //   // padding: EdgeInsets.fromLTRB(0, 0, 0, 112),
//                       //   // animation: LinearProgressIndicator(backgroundColor: Colors.amberAccent,
//                       //   //   valueColor: AlwaysStoppedAnimation(Colors.teal),
//                       //   //   minHeight: 20,),
//                       //   duration: Duration(milliseconds: 5000),
//                       //   shape: RoundedRectangleBorder(
//                       //     borderRadius: BorderRadius.circular(5),
//                       //   ),
//                       //   // padding: EdgeInsets.fromLTRB(0,0,0,46),
//                       //   margin: EdgeInsets.only(top: 0,bottom: 70,left: 11,right: 11),
//                       //   backgroundColor: Color(0xFFE6F1D7),
//                       //     elevation: 10,
//                       //   behavior: SnackBarBehavior.floating,
//                       //   content: Container(
//                       //     width: 336,
//                       //     height: 46,
//                       //     child: Center(
//                       //       child: Column(
//                       //         children: [
//                       //           // SizedBox(width: 40,),
//                       //           Row(
//                       //             mainAxisAlignment: MainAxisAlignment.start,
//                       //             crossAxisAlignment: CrossAxisAlignment.start,
//                       //
//                       //             // mainAxisSize: MainAxisSize.max,
//                       //             children: [
//                       //               SizedBox(width: 5,),
//                       //               Container(
//                       //                 height: 24,
//                       //                 width: 24,
//                       //                 decoration: BoxDecoration(
//                       //                   borderRadius: BorderRadius.circular(30),
//                       //                   // color: Color(0xFF0A8545),
//                       //                 ),
//                       //                 child: Image.asset('assets/images/green_done_icon.png'),
//                       //
//                       //               ),
//                       //               // SizedBox(width: 8,),
//                       //               Text('Added to Cart',
//                       //               style: TextStyle(color:Color(0xFF0A8545)),
//                       //               ),
//                       //               SizedBox(width: 143,),
//                       //               TextButton(onPressed: (){_onTapPrivacy();},
//                       //                   child: Text('CHECKOUT',
//                       //                       style: TextStyle(fontSize: 12,color: Color(0xFF0000FF)),
//                       //                   ),
//                       //               ),
//                       //             ],
//                       //           ),
//                       //           SizedBox(height: 10,),
//                       //           LinearProgressIndicator(
//                       //             backgroundColor: Colors.transparent,
//                       //             valueColor: AlwaysStoppedAnimation(
//                       //                 Color(0xFF0A8545)),
//                       //             minHeight: 6,
//                       //           ),
//                       //         ],
//                       //       ),
//                       //     ),
//                       //   ),
//                       //     );
//                       //     ScaffoldMessenger.of(context).showSnackBar(snackBar);
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           ),
