import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_practice/Widget/horizontal_list_snap.dart';
import 'package:ui_practice/details_view.dart';
import 'package:ui_practice/pages/login.dart';
import 'package:ui_practice/pages/sccafold.dart';


import 'package:ui_practice/product_view.dart';
import 'package:ui_practice/utils/routes.dart';

import 'Widget/ReorderableListView.dart';
import 'Widget/listview_builder.dart';
import 'productPage.dart';
import 'ckecksnackber.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,

      builder: (BuildContext context, child) {

        return  MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          themeMode: ThemeMode.light,

          theme: ThemeData(
            primarySwatch: Colors.amber,


          ),
          darkTheme: ThemeData(
              brightness: Brightness.light
          ),
         // initialRoute: MyRoutes.homeRoute,
          initialRoute: '/',
          routes: {
            '/': (context) =>ListPage(),
            MyRoutes.loginRoute: (context) => Login(),
            MyRoutes.homeRoute: (context) => HomePage(),
          },
        );
      },



    );
  }
}
