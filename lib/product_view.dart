import 'package:flutter/material.dart';

class ProductViewPage extends StatefulWidget {
  const ProductViewPage({Key? key}) : super(key: key);

  @override
  State<ProductViewPage> createState() => _ProductViewPageState();
}

class _ProductViewPageState extends State<ProductViewPage> {


  int _itemCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56.0),
        child: AppBar(
          backgroundColor: Color(0xFFFFFFFF),
          leading: Row(
            children: [
              SizedBox(width: 8,),
              IconButton(onPressed: (){},
                  icon: const Icon(Icons.arrow_back_ios,size: 30,),
                color: Color(0xFF363636),
              ),

            ],


          ),
            actions: const [

              Center(
                child: Text("DETAILS VIEW",
                  style: TextStyle(color: Color(0xFF363636),fontSize: 24),

                ),
              ),
              SizedBox(width:180 ,),
            ],
        ),




      ),


  body: Stack(
    children: [
      ListView(
        shrinkWrap: true,
        children: [
          Center(
            child: Container(
              width: 360,
              child: Column(
                children: [
                  const SizedBox(height: 12,),
                  Container(
                    width: 260,
                    height: 260,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFFCBCBCB),width: 1),
                    ),
                    child: FittedBox(
                      child: Image.asset('assets/images/Jaynamaz.png'),
                    ),

                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RichText(text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'Product Code:',
                        style: TextStyle(
                          color: Color(0xFF7E7E7E),
                          fontSize: 20,
                        ),
                  ),

                      TextSpan(
                        text: "19134",
                        style:
                        TextStyle(color: Color(0xFF00A500), fontSize: 20),
                      ),



                    ]
                  )),
                  const SizedBox(
                    height: 10,
                  ),
                  RichText(
                    text: const TextSpan(children: [
                      TextSpan(
                        text: "Stock:",
                        style: TextStyle(
                          color: Color(0xFF7E7E7E),
                          fontSize: 20,
                        ),
                      ),
                      TextSpan(
                        text: "Status",
                        style:
                        TextStyle(color: Color(0xFF00A500), fontSize: 20),
                      ),
                    ]),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                   Row(
                     children: const [
                      Expanded(
                        child: Text('Super Shine Jaynamaz Blue nk smnco ikmwed msm wod sdkmk mmw d',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          textDirection: TextDirection.ltr,
                          style: TextStyle(fontSize: 30),


                        ),
                      ),

                     ],

                   ),
                  const SizedBox(height: 14,),
                  Row(
                    children: [
                      const Text("80-120 cm",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF7E7E7E),
                        )
                      ),
                      Spacer(),
                      RichText(
                        text: const TextSpan(children: [
                          TextSpan(
                            text: 'pc:',
                            style: TextStyle(
                              color: Color(0xFF7E7E7E),
                              fontSize: 20,
                            ),
                          ),
                          TextSpan(
                            text: "1",
                            style: TextStyle(
                                color: Color(0xFF2C2C2C), fontSize: 20),
                          ),
                        ]),
                      ),

                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text(
                        "৳480",
                        style: TextStyle(fontSize: 30,color: Colors.red),),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        "৳570",
                        style: TextStyle(
                            fontSize: 24,
                            decoration: TextDecoration.lineThrough),
                      ),





                    ],
                  ),
                  const SizedBox(height: 14,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(width: 10,),
                      const Text('Size:',style: TextStyle(color: Color(0xFFF2C2C2C),fontSize: 18),),
                      SizedBox(width: 10,),

                      Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          border:Border.all(color: Colors.black),
                          boxShadow: const [
                            BoxShadow(color: Color(0xFFA7A7A7), spreadRadius: 1),
                          ],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(child: Text('S',style: TextStyle(color: Colors.black,fontSize: 30),)),


                      ),

          SizedBox(width: 6,) ,

                      Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          border:Border.all(color: Colors.black),
                          boxShadow: const [
                            BoxShadow(color: Color(0xFFA7A7A7), spreadRadius: 1),
                          ],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(child: Text('M',style: TextStyle(color: Colors.black,fontSize: 30),)),


                      ),
                      SizedBox(width: 6,) ,
                      Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          border:Border.all(color: Colors.black),
                          boxShadow: const [
                            BoxShadow(color: Color(0xFFA7A7A7), spreadRadius: 1),
                          ],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(child: Text('L',style: TextStyle(color: Colors.black,fontSize: 30),)),


                      ),
                      SizedBox(width: 6,) ,
                      Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          border:Border.all(color: Colors.black),
                          boxShadow: const [
                            BoxShadow(color: Color(0xFFA7A7A7), spreadRadius: 1),
                          ],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(child: Text('Xl',style: TextStyle(color: Colors.black,fontSize: 30),)),


                      ),

                    ],




                  ),
                  const SizedBox(height: 14,),


                  Row(
                    children: [
                      SizedBox(width: 10,),
                      Text('Color :',style: TextStyle(color: Color(0xFFF2C2C2C),fontSize: 18),),
                      SizedBox(width: 6,),
                      Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          border:Border.all(color: Colors.black),
                          boxShadow: const [
                            BoxShadow(color: Color(0xFFA7A7A7), spreadRadius: 1),
                          ],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            border:Border.all(color: Colors.black),
                            boxShadow: const [
                              BoxShadow(color: Color(0xFFD53636), spreadRadius: 1),
                            ],
                            borderRadius: BorderRadius.circular(10),
                          ),

                        ),


                      ),
                      SizedBox(width: 8,),
                      Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          border:Border.all(color: Colors.black),
                          boxShadow: const [
                            BoxShadow(color: Color(0xFFA7A7A7), spreadRadius: 1),
                          ],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            border:Border.all(color: Colors.black),
                            boxShadow: const [
                              BoxShadow(color: Color(0xFF33FC5A), spreadRadius: 1),
                            ],
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),


                      ),
                    ],

                  ),
                  const SizedBox(height: 14,),
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFFCBCBCB), width: 2
                        ),
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFCBCBCB),
                      ),
                        child: IconButton(
                          padding: EdgeInsets.zero,
                           icon: Icon(Icons.remove,size: 38,),
                          onPressed: () => setState(()=>
                              _itemCount!=0?_itemCount--:_itemCount

                          ),
                        ),

                  ),
                      SizedBox(width: 4,),

                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFFCBCBCB), width: 2
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFCBCBCB),
                        ),
                        child: Center(child: Text(_itemCount.toString(),style: TextStyle(fontSize: 30),)),
                        ),
                      SizedBox(width: 4,),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFE37D4E),
                        ),
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          icon:
                          Icon(
                            Icons.add,
                            size: 35,
                          ),
                          onPressed: ()=> setState(()
                          => _itemCount != 10 ? _itemCount++: _itemCount,),
                        ),

                      ),
                      Spacer(),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          textDirection: TextDirection.rtl,
                          children: [
                            Container(
                              width: 76,
                              height: 21,
                              child: const Text(
                                'Total Price',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF7E7E7E),
                                ),
                              ),
                            ),
                            Container(
                              width: 70,
                              height: 32,
                              child: const Text(
                                "৳2000",
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Color(0xFF323232),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height:22,),
                      Row(
                        textDirection: TextDirection.ltr,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "About this item Title",
                            style: TextStyle(fontSize: 24),
                          ),
                        ],
                      ),
                      Column(
                        textDirection: TextDirection.ltr,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Lorem ipsum dolor sit amet consectetur. Tincidunt tortor ornare mauris feugiat purus egestas diam enim in. A pulvinar fringilla ullamcorper fringilla eu. Amet lectus nisl massa in metus. Dignissim sem ut proin egestas ornare. Quis purus at arcu bibendum"  ,
                            style:
                            TextStyle(color: Color(0xFF2C2C2C), fontSize: 16),
                          ),
                          SizedBox(height: 70,)
                        ],
                      ),










                    ],
                  )












                ],




              ),
            ),
          )



        ],

      )
    ],
  ),




    );
  }
}
