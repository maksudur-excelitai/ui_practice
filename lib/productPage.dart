import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:ui_practice/productModel/model/model_details.dart';

class ProductPage extends StatefulWidget {


  const ProductPage({Key? key}) : super(key: key);

  // get duration => const Duration(seconds: 3);
  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage>  {

  int number=1;
  bool  click=true;
  bool colorCurrent=false;
  String data = '';



  List<String> test=["S","M","L","Xl"];


  final productList = ProductDetailsModel.productdetailsinfo();
  final productsizeList=ProductSize.productSizeInfo();


  int _itemCount = 0;
  bool sColor = false;
  bool mColor = false;
  bool lColor = false;
  bool xlColor=false;

  String sSizeData='';
  String mSizeData='';
  String lSizeData='';
  String xlSizeData='';


dataShowSize(BuildContext context){

  setState(() {
    sColor=!sColor;
    sSizeData='S';


    lSizeData='L;';
    xlSizeData='Xl';


  });




}





  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56.0),
        child: AppBar(
            backgroundColor: const Color(0xFFFFFFFF),
            // Drawer(backgroundColor: Colors.blue,
            // elevation: 0,
            leading: Row(
              children: [
                SizedBox(
                  width: 8.w,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 30.sp,
                    color: Color(0xFF363636),
                  ),
                ),
              ],
            ),
            actions: [
              Center(
                child: Text(
                  'DETAILS VIEW',
                  style: TextStyle(color: const Color(0xFF363636), fontSize: 24.sp),
                ),
              ),
              SizedBox(
                width: 180.w,
              ),
              // IconButton(onPressed: () {  },icon:Icon(Icons.arrow_back_ios,size: 25,),),
            ]),
      ),
      body: Stack(
        children: [
          ListView(
            shrinkWrap: true,
            children: [
              Center(
                child: Container(
                  width: 360.w,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 12.h,
                      ),
                      Container(
                        width: 260.w,
                        height: 260.h,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFFCBCBCB), width: 1),
                        ),
                        child: FittedBox(
                          child: Image.asset('assets/images/Jaynamaz.png'),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Product Code:',
                              style: TextStyle(
                                color: const Color(0xFF7E7E7E),
                                fontSize: 20.sp,
                              ),
                            ),
                            TextSpan(
                              text: "${productList[0].productCode}",
                              style:
                                  TextStyle(color: const Color(0xFF00A500), fontSize: 20.sp),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: "Stock:",
                            style: TextStyle(
                              color: const Color(0xFF7E7E7E),
                              fontSize: 20.sp,
                            ),
                          ),
                          TextSpan(
                            text: "${productList[0].productStock}",
                            style:
                                TextStyle(color: const Color(0xFF00A500), fontSize: 20.sp),
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          // SizedBox(width: 30,),
                          Expanded(
                            child: Text(
                              'Super Shine Jaynamaz Blue nk smnco ikmwed msm wod sdkmk mmw d',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              textDirection: TextDirection.ltr,
                              style: TextStyle(fontSize: 30.sp),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "${productList[0].productUnity}",
                            style: TextStyle(
                              fontSize: 20.sp,
                              color: const Color(0xFF7E7E7E),
                            ),
                          ),
                          const Spacer(),
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                text: 'pc:',
                                style: TextStyle(
                                  color: const Color(0xFF7E7E7E),
                                  fontSize: 20.sp,
                                ),
                              ),
                              TextSpan(
                                text: "${productList[0].productPc}",
                                style: TextStyle(
                                    color: const Color(0xFF2C2C2C), fontSize: 20.sp),
                              ),
                            ]),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "৳${productList[0].productCurrentPrice}",
                            style: TextStyle(fontSize: 30.sp),
                          ),
                          SizedBox(
                            width: 7.w,
                          ),
                          Text(
                            "৳${productList[0].productPreviesPrice}",
                            style: TextStyle(
                                fontSize: 24.sp,
                                decoration: TextDecoration.lineThrough),
                          ),
                        ],
                      ),
                      SizedBox(height: 14.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(width: 10.w,),
                           Text('Size:',style: TextStyle(color: Color(0xFFF2C2C2C),fontSize: 18.sp),),
                          SizedBox(width: 10.w,),



                          InkWell(
                            splashColor: Colors.green,
                            onTap: () =>dataShowSize(context),

                            child: Container(
                              width: 36.w,
                              height: 36.h,

                              decoration: BoxDecoration(
                                border:Border.all(color: Colors.black),
                                boxShadow:  [
                                  BoxShadow(
                                      color: sColor==false?Color(0xFFA7A7A7):Colors.green, spreadRadius: 1),
                                ],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child:  Center(child: Text('S',style: TextStyle(color: Colors.black,fontSize: 30.sp),)),


                            ),
                          ),

                          SizedBox(width: 6.w,) ,

                          InkWell(
                            onTap: (){
                              setState((){
                                mColor=!mColor;
                                mSizeData='M';

                              });
                            },
                            child: Container(
                              width: 36.w,
                              height: 36.h,
                              decoration: BoxDecoration(
                                border:Border.all(color: Colors.black),
                                boxShadow: [
                                  BoxShadow(color: mColor==false?Color(0xFFA7A7A7):Colors.green, spreadRadius: 1),
                                ],
                                borderRadius: BorderRadius.circular(10.sp),
                              ),
                              child: Center(child: Text('M',style: TextStyle(color: Colors.black,fontSize: 30.sp),)),


                            ),
                          ),
                          SizedBox(width: 6.w,) ,
                          InkWell(
                            onTap: (){
                              setState((){

                                lColor=!lColor;
                                lSizeData='L;';
                              });
                            },
                            child: Container(
                              width: 36.w,
                              height: 36.h,
                              decoration: BoxDecoration(
                                border:Border.all(color: Colors.black),
                                boxShadow:[
                                  BoxShadow(color:lColor==false? Color(0xFFA7A7A7):Colors.green, spreadRadius: 1),
                                ],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child:  Center(child: Text('L',style: TextStyle(color: Colors.black,fontSize: 30.sp),)),


                            ),
                          ),
                          SizedBox(width: 6.w,) ,
                          InkWell(
                            onTap: (){
                              setState((){
                                xlColor=!xlColor;

                                xlSizeData='Xl';
                              });
                            },
                            child: Container(
                              width: 36.w,
                              height: 36.h,
                              decoration: BoxDecoration(
                                border:Border.all(color: Colors.black),
                                boxShadow: [
                                  BoxShadow(color:xlColor==false?Color(0xFFA7A7A7):Colors.green, spreadRadius: 1),
                                ],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(child: Text('Xl',style: TextStyle(color: Colors.black,fontSize: 30.sp),)),


                            ),
                          ),

                        ],



                      ),
                      SizedBox(height: 16.h,),
                      Row(children: [
                        SizedBox(width: 70.w,),

        Text(sSizeData,style: TextStyle(color: Color(0xFFF2C2C2C),fontSize: 18.sp),),

                        SizedBox(width: 6.w,),
                      ],),
                      SizedBox(height: 16.h,),
                      Row(
                        children: [
                          SizedBox(width: 10.w,),
                          Text('Color :',style: TextStyle(color: Color(0xFFF2C2C2C),fontSize: 18.sp),),
                          SizedBox(width: 6.w,),
                          InkWell(
                            onTap: (){
                              setState((){
                                 sColor=!sColor;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(color: sColor==false?Color(0xFFA7A7A7):Colors.black87, spreadRadius: 1),
                                ],
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: const Color(0xFFA7A7A7)
                                ),
                                // color: Color(0xFF000000),
                              ),
                              width: 36.w,
                              height: 36.h,
                              child: ElevatedButton(
                                onPressed: (){
                                 setState((){

                                 });
                                },
                                child: null,
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(0xFF000000),
                                  // side: BorderSide(color: Colors.red, width: 1),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0)),

                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 6.w,),
                          InkWell(
                            onTap: (){
                              setState((){


                              sColor=!sColor;

                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                boxShadow:  [
                                  BoxShadow(color: sColor==false? Color(0xFFA7A7A7):Colors.black87, spreadRadius: 1),
                                ],
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: const Color(0xFFA7A7A7)
                                ),
                                // color: Color(0xFF000000),
                              ),

                              width: 36.w,
                              height: 36.h,
                              child: ElevatedButton(
                                onPressed: (){print('I am Working');},
                                child: null,
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(0xFFFFA825),
                                  // side: BorderSide(color: Colors.red, width: 1),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0)),

                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height:22.h,),
                      Row(
                        children: [
                          Container(
                            width: 40.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                              border: Border.all(color: const Color(0xFFCBCBCB),
                                width: 2,),
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xFFCBCBCB),
                            ),
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          icon:
                          Icon(
                          Icons.remove,
                          size: 38.sp,
                          ),
                          onPressed: ()=> setState(()
                          => _itemCount != 0 ? _itemCount--: _itemCount,
                          ),
                        ),
                          ),
                          SizedBox(
                            width: 4.5.w,
                          ),
                          Container(
                            width: 50.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xFFCBCBCB),
                                width: 2.w,
                              ),
                              borderRadius: BorderRadius.circular(10),
                              //color: Colors.white,
                            ),
                            child: Center(
                              child: Text(_itemCount.toString(),
                                style: TextStyle(fontSize: 20),),
                            ),
                          ),
                          SizedBox(
                            width: 4.w,
                          ),
                          Container(
                            width: 40.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFE37D4E),
                            ),
                            child: IconButton(
                              padding: EdgeInsets.zero,
                            icon:
                            Icon(
                              Icons.add,
                              size: 35.sp,
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
                                  width: 76.w,
                                  height: 21.h,
                                  child: Text(
                                    'Total Price',
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      color: const Color(0xFF7E7E7E),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10.h,),
                                Container(
                                  width: 70.w,
                                  height: 32.h,
                                  child: Text(
                                    "৳${productList[0].productTotalPrice}",
                                    style: TextStyle(
                                      fontSize: 24.sp,
                                      color: Color(0xFF323232),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height:22.h,),
                      Row(
                        textDirection: TextDirection.ltr,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${productList[0].productTitle}",
                            style: TextStyle(fontSize: 24.sp),
                          ),
                        ],
                      ),
                      Column(
                        textDirection: TextDirection.ltr,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                              "${productList[0].productDescription}"  ,
                            style:
                                TextStyle(color: Color(0xFF2C2C2C), fontSize: 16.sp),
                          ),
                          SizedBox(height: 70.h,)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

        ],
      ),
      bottomNavigationBar:
      BottomNavigationBar(
        elevation: 0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon:Icon(Icons.home,size: 24.sp,),
          label: 'Home',
          ),
          BottomNavigationBarItem(icon:Icon(Icons.person,size: 24.sp,),
          label: 'Home',
          ),
          BottomNavigationBarItem(icon:Icon(Icons.add_chart,size: 24.sp,),
          label: 'School',
          ),
          BottomNavigationBarItem(icon:Icon(Icons.shopping_cart,size: 24.sp,),
          label: 'Business'
          ),
        ],
        // onTap: _onitemTapped,
        backgroundColor: Color(0xFFFFFFFF),
        iconSize: 24.sp,
        // currentIndex: _selectedIndex,
        //selectedItemColor: Colors.blue,
        unselectedItemColor:  Color(0xff767676),
        selectedFontSize: 20.sp,
        type: BottomNavigationBarType.fixed,
        unselectedLabelStyle: TextStyle(fontSize: 10.sp),
        selectedLabelStyle: TextStyle(fontSize:20.sp,fontWeight: FontWeight.bold),
      ),

    );
  }
}

